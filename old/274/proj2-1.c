#include "timer.h"
#include "cmod.h"
#include "iroblib.h"
#include "oi.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

// Declare Global variables 
uint8_t sensors[Sen6Size]; // Array for all sensor data the robot can send
uint16_t state;
uint8_t SETPOINT=200;
// PID Values
uint8_t P; // Proportional term
uint8_t I; // Integral term
uint8_t D; // Derivative term
int8_t U; // Control signal
uint8_t PGain=1; // Proportional gain
uint8_t IGain=0; // Integral gain
uint8_t DGain=0; // Derivative gain
uint8_t T=1; // Delta t (1ms)
uint16_t sum; // Summation for I term
uint8_t e[10]; // Error array
uint8_t populateArray=0;
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
void rotateDegreeRight(int degree);
void driveStraight(void);
void stop(void);

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

// LEDs
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

// Infinite operation loop
for(;;) {

setupLEDs();
if(canSense==1){ // Using timer 0 to continuously update the sensor array
	uint8_t i;
	while(UCSR0A & 0x80)
	i = UDR0;
	byteTx(CmdSensors);  // Sensor opcode 
	byteTx(6);   // Send request for packet 0 
	for(uint8_t i = 0; i < Sen6Size; i++) { // Read each sensor byte
	sensors[i] = byteRx();
	state=sensors[SenWallSig1] << 8 | sensors[SenWallSig0];


	//populate array
	while(populateArray==0) {
		for(int i=0;i<9;i++) {
			e[i]=SETPOINT-state;
		}
		populateArray=1;
	}

	///new loop
	sum=0;

	//dump index 0~~bump values down
	for(int j=0;j<8;j++){
		e[j]=e[j+1];
		sum=sum+e[j];
	}


	//add this value
	e[9]=SETPOINT-state;
	sum=sum+e[9];

	
	
	//use the array to complete the formula
	
	P=PGain*e[9];
	I=IGain*sum*T;
	D=DGain*((e[9]-e[8])/T);
	
	U=P+I+D;

	//make corrections using u


	}	
senseTimerCount=100;
canSense=0;

if(canPrint == 1) { // Using timer 1 to print every second
	setSerialDestination(SERIAL_USB);
	cli();
	char buffer[50]; // 50 is a safe value since the string will not exceed that
	sprintf(buffer,"U: %i\n", U);
	printBuffer(buffer);
	sprintf(buffer,"State: %i\n", state);
	printBuffer(buffer);
	sei();			
	setSerialDestination(SERIAL_CREATE);
	canPrint=0;
	}

	if(sensors[SenBumpDrop]<=4) {
	if(state<=5){
		if(sensors[SenBumpDrop]==1 || sensors[SenBumpDrop]==2 || sensors[SenBumpDrop]==3){
			rotateDegreeRight(20);
			rightLEDon();		
		}
		else
			driveStraight();
	}
	else if(state>5){
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
		} // end else if
	}// end if
	
	else stop();
	}



delayMs(15);
if(UserButtonPressed) {
	powerOffRobot();
	exit(1);
	}
    }
}
// Print buffer needed because only one character can be sent at a type to construct the string
void printBuffer(char buf[]) {
int i;
for(i = 0; i < strlen(buf); i++) {
	byteTx(buf[i]);
	}
}

void stop(void) {
	byteTx(CmdDriveWheels);
	byteTx(0x00);//velocity right wheel 300mm/s
	byteTx(0x00);
	byteTx(0x00);//velocity left wheel 300mm/s
	byteTx(0x00);
	}
void rotateDegreeRight(int degree){
	int rotateDelayMs = degree*16;//gives proper degree at 30cm/s

	byteTx(CmdDriveWheels);
	byteTx(0x00);//velocity right wheel -300mm/s 10010110 01101010
	byteTx(0x6A);
	byteTx(0x00);//velocity left wheel 300mm/s
	byteTx(0x96);

	delayMs(rotateDelayMs);
}

void driveStraight(void){
	byteTx(CmdDriveWheels);
	byteTx(0x01);//velocity right wheel 300mm/s
	byteTx(0x2c);
	byteTx(0x01);//velocity left wheel 300mm/s
	byteTx(0x2c);
}
