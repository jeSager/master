#include "timer.h"
#include "cmod.h"
#include "iroblib.h"
#include "oi.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

// Declare Global variables 
uint8_t sensors[Sen6Size]; // Array for all sensor data the robot can send
uint16_t state;//[10];
uint8_t SETPOINT=80;
uint8_t robotState=0;

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
void rotate(int degree);
void driveStraight(void);
void stop(void);
int findWall(void);
void alignWall(void);
//void smallCircle(void);
void followWall(void);

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
	
	// Robot states
	// If wall reading and no bumper, then robot should align/follow wall
	if (state>=6 && sensors[SenBumpDrop]==0) //ADDED LINE TO SENSE BUMPER WHILE FOLLOWING WALL
		robotState=2; // Aligned with wall (follow)
	// If no wall reading and no bumper, robot should look for a wall
	else if (sensors[SenBumpDrop]==0 && state<=5) 
		robotState=0; // No wall (drive straight)//NO DRIVE TO THE LEFT MORE SLOWER-ER
	// Otherwise, robot is against the wall and needs to rotate to keep moving
	else
		robotState=1; // Found wall (rotate)
	
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

	senseTimerCount=100;
	canSense=0;
}//end if (canSense)	

if(sensors[SenBumpDrop]<=4) {
	if (robotState==0)// no wall, drive straight
		driveStraight();
	
	else if (robotState==1) { // on wall, stop and rotate
		stop();
		rotate(5);
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

void rotate(int degree){
	int rotateDelayMs = degree*8;//gives proper degree at 30cm/s

	byteTx(CmdDriveWheels);
	byteTx(0x01);//velocity right wheel 300mm/s
	byteTx(0x2c);
	byteTx(0xfe);//velocity left wheel -300mm/s
	byteTx(0xd4);

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
