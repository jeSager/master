#include "timer.h"
#include "cmod.h"
#include "iroblib.h"
#include "oi.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

// Declare Global variables 
uint16_t DELAY; // 1ms delay
uint8_t notReadyBool; // play button detection
double PI=3.14159265358979323846;
int true=1;
int false=0;
uint8_t sensors[Sen6Size];

// functions
int main(void);
void printBuffer(char buf[]);

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

	// Methods
	void setupLEDs(void) {
		DDRD |= 0X60;
	}
	void rightLEDon(void) {
		PORTD &= ~0x20;
	}
	void rightLEDoff(void) {
		PORTD |= 0x20;
	}
	void leftLEDon(void) {
		PORTD &= ~0x40;
	}
	void leftLEDoff(void) {
		PORTD |= 0x40;
	}

	// Initialize global variables
	DELAY=1000;
	notReadyBool=1; 

	// Task 1.1 (LED toggle)
	/*for(uint8_t i=0;i<5;i++) {
	  setupLEDs();      // activate LEDs
	  leftLEDon();      // begin LED toggle
	  delayMs(DELAY);
	  leftLEDoff();
	  delayMs(DELAY);
	  rightLEDon();
	  delayMs(DELAY);
	  rightLEDoff();
	  delayMs(DELAY);   // end LED toggle
	  }*/

	// Task 1.2, 1.3 (Bumper Sensors)
	void bumpSense(void) {
		uint8_t bumper;
		while(UCSR0A & 0x80);   // clear the receive buffer
		byteTx(142);            // sensor opcode
		byteTx(7);              // send request for packet 7
		bumper = byteRx();      // set bumper to received sensor packet
		if(bumper==1) {         // check for right bumper detection
			rightLEDon();
		}
		else if(bumper==2) {    // check for left bumper detection
			leftLEDon();
		}
		else if(bumper==3) {    // check for both bumpers
			leftLEDon();
			rightLEDon();
		}
		else {
			leftLEDoff();
			rightLEDoff();
		}
	}

	void rotateDegreeRight(int right){
		int rotateDelayMs = 30*8;//gives proper degree at 30cm/s
		if(canDrive==1){
			if(right==1){//if turning right
				byteTx(CmdDriveWheels);
				byteTx(0xfe);//velocity right wheel -300mm/s
				byteTx(0xd4);
				byteTx(0x01);//velocity left wheel 300mm/s
				byteTx(0x2c);

			}
			else{//if turning left
				byteTx(CmdDriveWheels);
				byteTx(0x01);//velocity right wheel 300mm/s  
				byteTx(0x2c);
				byteTx(0xfe);//velocity left wheel -300mm/s
				byteTx(0xd4);
			}
			//wheels stop either way
			delayMs(rotateDelayMs);
			byteTx(CmdDriveWheels);
			byteTx(0x00);//stop Wheels
			byteTx(0x00);
			byteTx(0x00);
			byteTx(0x00);
		}

	}

	void driveStraightDistanceCm(int distance){
		while(canDrive==1){
			byteTx(CmdDriveWheels);
			byteTx(0x01);//velocity right wheel 300mm/s
			byteTx(0x2c);
			byteTx(0x01);//velocity left wheel 300mm/s
			byteTx(0x2c);
		}

	}
/*
	void play(void){
		for(int i=0;i<4;i++){
			driveStraightDistanceCm(80);
			rotateDegreeRight(72, true);//true for turning right
		}
		driveStraightDistanceCm(80);
	}


	void advance(void){
		rotateDegreeRight(180, false);//false for turning left
		for(int i=0;i<4;i++){
			driveStraightDistanceCm(80);
			rotateDegreeRight(72, false);//false for turning left
		}
		driveStraightDistanceCm(80);

	}


	// Task 2.1 (Drive)
	void tryPlay(void){
		uint8_t playPressed;
		while(UCSR0A & 0x80);   // clear the receive buffer
		byteTx(142);            // sensor opcode
		byteTx(18);              // send request for packet 18
		playPressed = byteRx();      // set playPressed to received sensor packet
		if (playPressed==1){
			play();
		}
		//else do nothing	
	}
	void tryAdvance(void){
		uint8_t advancePressed;
		while(UCSR0A & 0x80);   // clear the receive buffer
		byteTx(142);            // sensor opcode
		byteTx(18);              // send request for packet 18
		advancePressed = byteRx();      // set advancePressed to received sensor packet
		if (advancePressed==2){
			advance();
		}
		//else do nothing	
	}
*/
	// Infinite operation loop
	for(;;) {
		if(canSense==1){
			//cli();
			uint8_t i;
			while(UCSR0A & 0x80)
			i = UDR0;
			byteTx(CmdSensors);  // sensor opcode 
			byteTx(6);   // send request for packet 0 
			for(uint8_t i = 0; i < Sen6Size; i++) { // read each sensor byte
			   sensors[i] = byteRx();
			}			
			//sei();	
			senseTimerCount=100;		
			canSense=0;		
		}

				


		delayMs(15);
		if(UserButtonPressed) {
			powerOffRobot();
			exit(1);
		}
	}
}

void printBuffer(char buf[]) {
	int i;
	for(i = 0; i < strlen(buf); i++) {
		byteTx(buf[i]);
	}
}
