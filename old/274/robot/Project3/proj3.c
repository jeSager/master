#include "timer.h"
#include "cmod.h"
#include "iroblib.h"
#include "oi.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

// Declare Global variables
#define true 1;
#define false 0; 
uint8_t right= 1;
uint8_t left= 0; 
uint8_t sensors[Sen6Size]; // Array for all sensor data the robot can send
uint16_t state;//[10];
uint8_t SETPOINT=80;
uint8_t robotState=0;
uint8_t startIR=0;
// PID Values
uint8_t P; // Proportional term
uint8_t I; // Integral term
uint8_t D; // Derivative term
int8_t U; // Control signal
uint8_t PGain=80; // Proportional gain
uint8_t IGain=20; // Integral gain
uint8_t DGain=200; // Derivative gain
uint8_t PROPORTIONAL4U=100;//given proportion
uint8_t T=1; // Delta t (1ms)
uint16_t sum; // Summation for I term
uint8_t e[10]; // Error array
uint8_t populateArray=0;
uint8_t right; // Boolean for turning
uint8_t firstStraight=1; // Boolean
uint8_t slowTheFuckDown=0; // Boolean

//state avg for straight driving
uint16_t stateSum;//summation for stae avg
uint16_t avgState;//a variable
uint8_t hasTurned=0;//try to drive straight boolean
uint8_t s[10];//state array

// Wheel adjustments
uint16_t wheelSpeed;
uint16_t newSpeed;
uint8_t highBit;   
uint8_t lowBit;
uint16_t leftSpeed;
uint8_t highBitLeft;
uint8_t lowBitLeft;

// functions
int main(void);
void printBuffer(char buf[]);
void rotate(uint8_t degree, uint8_t r);
void driveStraight(void);
void stop(void);
int findWall(void);
void alignWall(void);
//void smallCircle(void);
void followWall(void);
void dock(void);
void faceHome(uint8_t right);
void driveStraightHome(void);
void home(void);
//void adjust(void);
void driveStraightDistanceCm(int distance);
void locate(void);
void updateSensors(void);
void reverse(void);

uint8_t red;
uint8_t green;
uint8_t redgreen;
uint8_t redgreenforce;
uint8_t greenforce;
uint8_t redforce;
uint8_t goodIR;
uint8_t located;
uint8_t first=true;
uint8_t anyforce;


int main(void) {
// Set up Create and module
initializeCommandModule();

powerOnRobot();
// Is the Robot on
byteTx(CmdStart);
// Start the create
baud(Baud57600);
// Set the baud rate for the Create and Command Module
defineSongs();
// Define some songs so that we know the robot is on.
byteTx(CmdControl);
// Deprecated form of safe mode. I use it because it will
// turn of all LEDs, so it's essentially a reset.
byteTx(CmdFull);
// We are operating in FULL mode.

// CSCE 274 students: I would make sure the robot stops. 
//                    As a precaution for the robot and your grade.

// Play the reset song and wait while it plays.
byteTx(CmdPlay);
byteTx(RESET_SONG);
delayMs(750);

// Turn the power button on to something. I like red, but here is green.
// CSCE 274 students: The following should (will) be a function that you write.
byteTx(CmdLeds);
byteTx(0x00);
byteTx(0);
byteTx(255);

// Infinite operation loop
for(;;) {
updateSensors();


if(sensors[SenBumpDrop]<=4) {
	if(robotState==3)
		dock();
	else 
	if (robotState==0)// no wall, drive straight
		driveStraight();
	else if (robotState==1) { // on wall, stop and rotate
		stop();
		rotate(5,left);
	}
	else if (robotState==2){
	followWall();
	hasTurned=1;
	}
	
} // wheel drop detection
else
	stop();

delayMs(15);
if(UserButtonPressed) {
	powerOffRobot();
	exit(1);
	}//endif
}//endfor
}//end main

void stop(void) {
	byteTx(CmdDriveWheels);
	byteTx(0x00);//velocity right wheel 0mm/s
	byteTx(0x00);
	byteTx(0x00);//velocity left wheel 0mm/s
	byteTx(0x00);
	}

void rotate(uint8_t degree, uint8_t r){//r for right
	int rotateDelayMs = degree*8;//gives proper degree at 30cm/s
	byteTx(CmdDriveWheels);	
	if(r){
	byteTx(0xfe);//velocity right wheel
	byteTx(0xd4);
	byteTx(0x01);//velocity left wheel 
	byteTx(0x2c);
	}	

	else{
	byteTx(0x01);//velocity right wheel
	byteTx(0x2c);
	byteTx(0xfe);//velocity left wheel 
	byteTx(0xd4);
	}
	delayMs(rotateDelayMs);
	}

void driveStraight(void){
	if(avgState<=0&&hasTurned==0){
		byteTx(CmdDriveWheels);
		byteTx(0x00);//velocity right wheel 150mm/s
		byteTx(0x99);
		byteTx(0x00);//velocity left wheel 150mm/s
		byteTx(0x99);		
	}
	else{
		byteTx(CmdDriveWheels);
		byteTx(0x00);//velocity right wheel 150mm/s
		byteTx(0x20);
		byteTx(0x00);//velocity left wheel 150mm/s
		byteTx(0x99);
		hasTurned=1;
	}
	robotState=findWall();
}

void driveStraightHome(void){
    byteTx(CmdDriveWheels);
    byteTx(0x00); // Velocity right wheel 150mm/s
    byteTx(0x60);
    byteTx(0x00); // Velocity left wheel 150mm/s
    byteTx(0x60);
}//end straight home

void home(void){
    byteTx(CmdDriveWheels);
    byteTx(0x00); // Velocity right wheel 150mm/s
    byteTx(0x20);
    byteTx(0x00); // Velocity left wheel 150mm/s
    byteTx(0x20);
}//end straight home

void faceHome(uint8_t right){
    byteTx(CmdDriveWheels);
    if(right==1){
        byteTx(0x00); // Velocity right wheel 300mm/s
        byteTx(0x70);
        byteTx(0x00); // Velocity left wheel -300mm/s
        byteTx(0x20);
    }
    else{
        byteTx(0x00); // Velocity left wheel 300mm/s
        byteTx(0x20);
        byteTx(0x00); // Velocity right wheel -300mm/s
        byteTx(0x70);
	}

}//end faceHome

int findWall(void) {
	if (sensors[SenBumpDrop]==1 || sensors[SenBumpDrop]==2 || sensors[SenBumpDrop]==3)
		return 1; // 1 is wall found
	else return 0; // 0 is wall not found
}

void followWall(void) {
	wheelSpeed=0x96;
	leftSpeed=wheelSpeed-U;//16bit
	highBitLeft=leftSpeed>>8;
	lowBitLeft=leftSpeed-(highBitLeft<<8);
	newSpeed=wheelSpeed+U;//16bit
	highBit=newSpeed>>8;   
	lowBit=newSpeed-(highBit<<8);
	byteTx(CmdDriveWheels);
	byteTx(highBit);//velocity right wheel 150mm/s+u
	byteTx(lowBit);
	//left stays constant
	byteTx(highBitLeft);//velocity left wheel 150mm/s
	byteTx(lowBitLeft);
}

void dock(void) {



/*
if(sensors[SenChAvailable]!=0)
	stop();

if(sensors[SenBumpDrop]>0 && sensors[SenIRChar]==254)
	adjust();

if(sensors[SenBumpDrop]>0 && sensors[SenIRChar]==246)
	adjust();

if(sensors[SenBumpDrop]>0 && sensors[SenIRChar]==250)
	adjust();

if(sensors[SenBumpDrop]>0 && sensors[SenIRChar]==242)
	adjust();
*/



/*
else if(redgreen){
	located=true;
	driveStraightHome();
}*/

if(first){
	rotate(90, left);
	first=false;
	while(sensors[SenBumpDrop]!=0){
		rotate(5,left);
		updateSensors();		
	}
}
while(1){
updateSensors();
//movement
if(sensors[SenBumpDrop]!=0){

	byteTx(CmdSafe);
	stop();
	delayMs(5000);
	updateSensors();

	if(sensors[SenBumpDrop]!=0){
		reverse();
	}
}
else if(red||redforce)//red
	faceHome(right);
else if(green||greenforce)//green
	faceHome(left);
else
	driveStraightHome();
}
	


}


void reverse(void){
	byteTx(CmdDriveWheels);
	byteTx(0xff); //backwards
	byteTx(0x06);
	byteTx(0xff);
	byteTx(0x06);
	delayMs(2000);
	stop();
//	locate();
}
/*
void locate(void){-
	uint8_t next=false;
	if(!(redgreen||redgreenforce)){
		stop();
		rotate(20, left);
		updateSensors();
		delayMs(250);
		stop();
		if(!(redgreen||redgreenforce)){	
			rotate(40, right);
			updateSensors();
			delayMs(250);
			stop();
		}
	}
	if(!goodIR){
		robotState=0;
	}
}*/
/*
void adjust(void) {
	stop();
	delayMs(5000);
	byteTx(CmdSensors);  // Sensor opcode 
	byteTx(34);   // Send request for packet 0 
	for(uint8_t i = 0; i < Sen6Size; i++) // Read each sensor byte
		sensors[i] = byteRx();
	if(sensors[SenChAvailable]==0 || sensors[SenChargeState]!=0) {
	rotate(180);
	driveStraightDistanceCm(80);
	rotate(180);
	//dock();
	}
	else {
	}
}*/

	void driveStraightDistanceCm(int distance){
		uint8_t driveDelay= distance / 30 *1350;// 30 for 30 cm/s -- 1000 for conversion -- 350 for adjustment
		byteTx(CmdDriveWheels);
		byteTx(0x01);//velocity right wheel 300mm/s
		byteTx(0x2c);
		byteTx(0x01);//velocity left wheel 300mm/s
		byteTx(0x2c);
		delayMs(driveDelay);
		stop();
		delayMs(15);
	}
void updateSensors(void){
if(canSense==1){ // Using timer 0 to continuously update the sensor array
	uint8_t i;
	while(UCSR0A & 0x80)
	i = UDR0;
	byteTx(CmdSensors);  // Sensor opcode 
	byteTx(6);   // Send request for packet 0 
	for(uint8_t i = 0; i < Sen6Size; i++) // Read each sensor byte
		sensors[i] = byteRx();
	for (int i=0;i<9;i++) 
		state=sensors[SenWallSig1] << 8 | sensors[SenWallSig0];//[i]

	//uint8_t force= (sensors[SenIRChar]==242);
	red= (sensors[SenIRChar]==248);
	green= (sensors[SenIRChar]==244);
	redgreen= (sensors[SenIRChar]==252);
	redgreenforce= (sensors[SenIRChar]==254);
	greenforce= (sensors[SenIRChar]==246);
	redforce= (sensors[SenIRChar]==250);
	goodIR= (red||green||redgreen||redgreenforce||greenforce||redforce);
	anyforce= (redgreenforce||greenforce||redforce);
/*
	Force Field = 1.5
	Green = 1.0
	Green + Force Field = 2.5
	Red = 1.0
	Red + Force Field = 1.5 
	Red + Green = 2.0
	Red + Green + Force Field = 3.0
*/
	if(sensors[SenChAvailable]!=0)
		while(1)stop();
	

	//populate array with whatever we have
	if(populateArray==0) {
		for(int i=0;i<9;i++) 
			e[i]=SETPOINT-state;
		populateArray=1;
	}

	///new loop
	sum=0;
	stateSum=0;

	//dump index 0~~bump values down
	for(int j=0;j<8;j++){
		e[j]=e[j+1];
		sum=sum+e[j];
		s[j]=s[j+1];
		stateSum=stateSum+s[j];
	}

	//finish state avg
	s[9]=state;
	stateSum=stateSum+s[9];
	avgState=stateSum/10;

	//finish i summation
	e[9]=SETPOINT-state;
	sum=sum+e[9];

	//use the array to complete the formula
	P=PGain*e[9];
	I=IGain*sum*T;
	D=DGain*((e[9]-e[8])/T);
	U=(P+I+D)/PROPORTIONAL4U;

	// Robot states
	// If wall reading and no bumper, then robot should align/follow wall

	if (state>=6 && sensors[SenBumpDrop]==0){ //ADDED LINE TO SENSE BUMPER WHILE FOLLOWING WALL
		robotState=2; // Aligned with wall (follow)
		startIR=true;				
	}
	// If no wall reading and no bumper, robot should look for a wall
	else if (sensors[SenBumpDrop]==0 && state<=5) 
		robotState=0; // No wall (drive straight)//NO DRIVE TO THE LEFT MORE SLOWER-E
	// Otherwise, robot is against the wall and needs to rotate to keep moving
	else
		robotState=1; // Found wall (rotate)

	if (goodIR&&startIR){
		robotState=3; // Docking station signal detected and wallfollowed
	}




	senseTimerCount=100;
	canSense=0;
}//end if (canSense)

}
