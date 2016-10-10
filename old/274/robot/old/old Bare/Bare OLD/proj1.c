#include "timer.h"
#include "cmod.h"
#include "iroblib.h"
#include "oi.h"
#include <stdlib.h>

// Declare Global variables 
   uint16_t DELAY; // 1ms delay
   uint8_t notReadyBool; // play button detection

int main() {
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
   for(uint8_t i=0;i<5;i++) {
   setupLEDs();      // activate LEDs
   leftLEDon();      // begin LED toggle
   delayMs(DELAY);
   leftLEDoff();
   delayMs(DELAY);
   rightLEDon();
   delayMs(DELAY);
   rightLEDoff();
   delayMs(DELAY);   // end LED toggle
   }

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

// Task 2.1 (Drive)
void tryPlay(void){
	uint8_t playPressed;
	while(UCSR0A & 0x80);   // clear the receive buffer
	byteTx(142);            // sensor opcode
	byteTx(18);              // send request for packet 18
	playPressed = byteRx();      // set playPressed to received sensor packet
	if (playPressed==1){
		for(int i=0;i<4;i++){
			byteTx(158);
			byteTx(17);
			notReadyBool=0;
			//drive straight
			byteTx(CmdDrive);
			byteTx(0x01);//velocity 300mm/s
			byteTx(0x2c);
			byteTx(0x7f);//radius
			byteTx(0xff);

			delayMs(2800);

			//turn in place
			byteTx(CmdDrive);
			byteTx(0x01);//velocity 300mm/s
			byteTx(0x2c);
			byteTx(0xff);//radius
			byteTx(0xff);

			delayMs(600);
		}
	powerOffRobot();
	}
	//else do nothing
	
}

  // Infinite operation loop
   for(;;) {
      bumpSense();
      tryPlay();
      delayMs(10);
      if(UserButtonPressed) {
        powerOffRobot();
        exit(1);
    }
   }
  }


