#include "timer.h"
#include "cmod.h"
#include "iroblib.h"
#include "oi.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

// Declare Global variables

uint8_t true= 1;
uint8_t false= 0;
uint8_t right= 1; // Boolean for turning
uint8_t left= 0; // Boolean for turning

uint8_t start=0;//IR begin

uint8_t sensors[Sen6Size]; // Array for all sensor data the robot can send
uint16_t state;//this is the wall sensor
uint8_t SETPOINT=80;//setpoint for PID operation

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

uint8_t bestIR[6]; // Error array

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
void rotate(uint8_t r, uint8_t d);
void driveToWall(void);
void stop(void);
void alignWall(void);
void followWall(void);
void home(void);
void faceHome(uint8_t r);
void driveStraightHome(void);
void dock(void);
void robotStateSelector(void);
void PID(void);
void updateSensors(void);
void locate(void);

//LEDS
void setupLEDs(void);
void rightLEDon(void);
void rightLEDoff(void);
void leftLEDon(void);
void leftLEDoff(void);
void bothLEDon(void);
void bothLEDoff(void);

uint8_t force;
uint8_t red;
uint8_t green;
uint8_t redgreen;
uint8_t redgreenforce;
uint8_t greenforce;
uint8_t redforce;

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
// Play the reset song and wait while it plays.
byteTx(CmdPlay);
byteTx(RESET_SONG);
delayMs(750);

// Turn the power button on to something. I like red, but here is green.
byteTx(CmdLeds);
byteTx(0x00);
byteTx(0);
byteTx(255);

//populate the error array
for(uint8_t i=0;i<9;i++)
	e[i]=0;

// Infinite operation loop
for(;;) {


	updateSensors();
	//timer for sensors
	PID();
	//robot goes straight first, state intialized to zero
	robotStateSelector();


delayMs(15);
if(UserButtonPressed) {
	powerOffRobot();
	exit(1);
	}//endif
}//endInfinateFor
}//////////////////////////////////////////////////////////////////////end main

void stop(void) {
	byteTx(CmdDriveWheels);
	byteTx(0x00);//velocity right wheel 0mm/s
	byteTx(0x00);
	byteTx(0x00);//velocity left wheel 0mm/s
	byteTx(0x00);

}//////////////////////////////////////////////////////////////////////////////

void rotate(uint8_t r, uint8_t degree){
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

}//////////////////////////////////////////////////////////////////////////////
void driveToWall(void){
	byteTx(CmdDriveWheels);
	byteTx(0x00);//velocity right wheel
	byteTx(0x40);
	byteTx(0x00);//velocity left wheel
	byteTx(0x70);
	start=(sensors[SenBumpDrop]==1 || sensors[SenBumpDrop]==2 || sensors[SenBumpDrop]==3);

}//////////////////////////////////////////////////////////////////////////////
void driveStraightHome(void){
    byteTx(CmdDriveWheels);
    byteTx(0x00); // Velocity right wheel
    byteTx(0x40);
    byteTx(0x00); // Velocity left wheel
    byteTx(0x40);

}//////////////////////////////////////////////////////////////////////////////
void faceHome(uint8_t r){
    byteTx(CmdDriveWheels);
    if(r){
        byteTx(0x00); // Velocity right wheel
        byteTx(0x70);
        byteTx(0x00); // Velocity left wheel
        byteTx(0x40);
    }
    else{
        byteTx(0x00); // Velocity left wheel
        byteTx(0x40);
        byteTx(0x00); // Velocity right wheel
        byteTx(0x70);
	}

}//////////////////////////////////////////////////////////////////////////////
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
	//left
	byteTx(highBitLeft);//velocity left wheel 150mm/s
	byteTx(lowBitLeft);

}//////////////////////////////////////////////////////////////////////////////
void tryCharging(void){
	updateSensors();
//	byteTx(128);//passive- fastest for getting reading
//	byteTx(158);
//	byteTx(234);//wait for Passive end
	byteTx(131);//safe Mode; will revert to passive if charging
	if(sensors[SenChAvailable]!=2)//back to full if not charging
		byteTx(CmdFull);
}//////////////////////////////////////////////////////////////////////////////
void dock(void){
	for(uint8_t i=0;i<3;i++){//try this three times
		stop();
		tryCharging();
		rotate(right, 5);
		tryCharging();
		rotate(left, 10);
		tryCharging();
		byteTx(CmdDriveWheels);
			byteTx(0xff); //backwards
			byteTx(0x06);
			byteTx(0xff);
			byteTx(0x06);
		//while no bump go home
		while(sensors[SenBumpDrop]==0){home();}
	}
	rotate(right, 180);
	start=false;//restart the entire algorithm
	main();

}//////////////////////////////////////////////////////////////////////////////
void locate(void) {
	uint8_t notFound=true;
	uint8_t iter=0;
	while(notFound&&iter!=6) {
		rotate(right, 60);
		updateSensors();
		delayMs(250);//wait for sensor update
		if(sensors[SenIRChar]==(252||254))//redgreen or redgreenforce
			notFound=false;
		else
			iter++;		
	}	

}//////////////////////////////////////////////////////////////////////////////
void home(void) {

	if(redgreen||redgreenforce){
		driveStraightHome();
		bothLEDon();
	}
	else if(red||redforce){
		faceHome(right);
		rightLEDon();
	}
	else if(green||greenforce){
		faceHome(left);
		leftLEDon();
	}

}//////////////////////////////////////////////////////////////////////////////
void robotStateSelector(void){
	bothLEDoff();//led shows how algorithm is affecting controler

	if(sensors[SenBumpDrop]<=4) {
		//if wall has been found, try to dock
		if(start&&(sensors[SenIRChar]>241)&&(sensors[SenIRChar]<255)){
			if(!(redgreen||redgreenforce||red||green)) 
				locate();			
			if(redgreenforce&&sensors[SenBumpDrop]!=0)
				dock();
			else 
				home();			
		}
		///wallfollow
		// If wall reading and no bumper, then robot should align/follow wall
		else if (state>=6 && sensors[SenBumpDrop]==0){
			start=true;
			followWall();// Aligned with wall (follow)
		}
		// If no wall reading and no bumper, robot should look for a wall
		else if (sensors[SenBumpDrop]==0 && state<=5)
			driveToWall();

		// Otherwise, robot is against the wall and needs to rotate to keep moving
		else
			rotate(left, false);
	} // end wheel drop detection
	else
		stop();// wheels are off the ground

}//////////////////////////////////////////////////////////////////////////////
void setupLEDs(void) {DDRD |= 0X60;}
void rightLEDon(void) {PORTD &= ~0x20;}
void rightLEDoff(void) {PORTD |= 0x20;}
void leftLEDon(void) {PORTD &= ~0x40;}
void leftLEDoff(void) {PORTD |= 0x40;}
void bothLEDon(void) {rightLEDon();leftLEDon();}
void bothLEDoff(void) {rightLEDoff();leftLEDoff();}

void updateSensors(void){
	if(canSense){

		 // Using timer 0 to continuously update the sensor array
		uint8_t i;
		while(UCSR0A & 0x80)
		i = UDR0;
		byteTx(CmdSensors);  // Sensor opcode
		byteTx(6);   // Send request for packet 0
		for(uint8_t i = 0; i < Sen6Size; i++) // Read each sensor byte
			sensors[i] = byteRx();
		for (uint8_t i=0;i<9;i++)
			state=sensors[SenWallSig1] << 8 | sensors[SenWallSig0];//[i]

		force= (sensors[SenIRChar]==242);
		red= (sensors[SenIRChar]==248);
		green= (sensors[SenIRChar]==244);
		redgreen= (sensors[SenIRChar]==252);
		redgreenforce= (sensors[SenIRChar]==254);
		greenforce= (sensors[SenIRChar]==246);
		redforce= (sensors[SenIRChar]==250);

		senseTimerCount=100;
		canSense=0;
	}//end if (canSense)
}
void PID(void){

		sum=0;
		//dump index zero and bump all values down
		for(uint8_t j=0;j<8;j++){
			e[j]=e[j+1];
			sum=sum+e[j];
		}
		//we've made room for the current data
		//finish i summation
		e[9]=SETPOINT-state;
		sum=sum+e[9];

		//use the array to complete the formula
		P=PGain*e[9];
		I=IGain*sum*T;
		D=DGain*((e[9]-e[8])/T);
		U=(P+I+D)/PROPORTIONAL4U;
}
