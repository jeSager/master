#include "timer.h"
#include "cmod.h"
#include "iroblib.h"
#include "oi.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

// Declare Global variables
uint8_t sensors[Sen6Size]; // Array for all sensor data the robot can send
uint8_t safe=0; // Variable for safe condition to drive, 0=safe 1=unsafe
uint8_t unSafeRotate=0; // Variable for safe condition to rotate, 0=safe 1=unsafe
uint8_t isRotating=0; // To indicate if a rotation is occuring
uint8_t ROTATIONAL_DEGREES=30; // Rotate 30 degrees
uint8_t ROTATION_CALIBRATION=8; // Adjustment value

// functions
int main(void);
void rotateDegreeRight(int right); // Rotate method
void driveStraightDistance(void); // Drive method
void stop(void); // Stop robot from moving method

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
      if(canSense==1){
         uint8_t i;
         while(UCSR0A & 0x80)
            i = UDR0;
         byteTx(CmdSensors);  // sensor opcode 
         byteTx(6);   // send request for packet 0 
         for(uint8_t i = 0; i < Sen6Size; i++) { // read each sensor byte
            sensors[i] = byteRx();
         }
      // Check sensors for unsafe readings
      // Check cliff sensors
         if(sensors[SenCliffR]==1 || sensors[SenCliffFR]==1 || 
         sensors[SenCliffL]==1 || sensors[SenCliffFL]==1) {
            safe=1; // 1=unsafe to drive
         }
         // Check bumpers
         else if(sensors[SenBumpDrop]==1 || sensors[SenBumpDrop]==2 || 
         		sensors[SenBumpDrop]==3) {
            safe=1;
         }
         // Check wall sensors
         else if(sensors[SenWall]==1 || sensors[SenVWall]==1) {
            safe=1;
         }
         else safe=0; // 0=safe to drive
      
         if(sensors[SenBumpDrop]>=4) {
            unSafeRotate=1; // 1=wheel drop, cannot rotate
         }
         else unSafeRotate=0; // 0=safe to rotate
         senseTimerCount=100;
         canSense=0;
      }
   // Check remote for buttons being pressed and act accordingly
      if(isRotating==1 && unSafeRotate==1){
      } // Do nothing if wheel drop has occured
      else if(sensors[SenIRChar]==129&&unSafeRotate==0) { // rotate left
         rotateDegreeRight(0);
      }
      else if(sensors[SenIRChar]==130&&safe==0) { // forward
         driveStraightDistance();
      }
      else if(sensors[SenIRChar]==131&&unSafeRotate==0) { // rotate right
         rotateDegreeRight(1);
      }
      else stop();
   
      delayMs(15);
      if(UserButtonPressed) {
         powerOffRobot();
         exit(1);
      }
   }
}

void stop(void) {
   byteTx(CmdDriveWheels);
   byteTx(0x00);//velocity right wheel 300mm/s
   byteTx(0x00);
   byteTx(0x00);//velocity left wheel 300mm/s
   byteTx(0x00);
}

void rotateDegreeRight(int right){
//rotates 30 degrees.  param right true if turning right
   int rotateDelayMs = ROTATIONAL_DEGREES*ROTATION_CALIBRATION;//proper delay for 30 degree turn
   isRotating=1;//boolean true if rotating
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
   delayMs(rotateDelayMs);
   isRotating=0;
}
	
void driveStraightDistance(void){
   byteTx(CmdDriveWheels);
   byteTx(0x01);//velocity right wheel 300mm/s
   byteTx(0x2c);
   byteTx(0x01);//velocity left wheel 300mm/s
   byteTx(0x2c);
}

