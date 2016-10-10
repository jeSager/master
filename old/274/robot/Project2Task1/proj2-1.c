#include "timer.h"
#include "cmod.h"
#include "iroblib.h"
#include "oi.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

// Declare Global variables 
uint8_t sensors[Sen6Size]; // Array for all sensor data the robot can send

// functions
int main(void);
void printBuffer(char buf[]); // Method to pass each char into the string

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
         byteTx(6);   // Send request for packet 6
         for(uint8_t i = 0; i < Sen6Size; i++) { // Read each sensor byte
            sensors[i] = byteRx();
         }	
         senseTimerCount=100; // Reset for Timer 0 sensor reading
         canSense=0;
      }
   // Print out sensor data, typecast for 2 byte values and specify for 
   // unsigned when necessary
      if(canPrint == 1) { // Using timer 1 to print every second
         setSerialDestination(SERIAL_USB);
         cli();
         char buffer[50]; // 50 is a safe value since the string will not exceed that
         sprintf(buffer,"Battery Charge: %i\n", 
            (uint16_t)((sensors[SenCharge1] << 8)| sensors[SenCharge0]));
         printBuffer(buffer);
         sprintf(buffer,"Wall Signal: %i\n", 
            (uint16_t)((sensors[SenWallSig1] << 8)| sensors[SenWallSig0]));
         printBuffer(buffer);
         sprintf(buffer,"Cliff Left: %u\n", 
            (uint16_t)((sensors[SenCliffLSig1] << 8)| sensors[SenCliffLSig0]));
         printBuffer(buffer);
         sprintf(buffer,"Cliff Front Left: %i\n", 
            (uint16_t)((sensors[SenCliffFLSig1] << 8)| sensors[SenCliffFLSig0]));
         printBuffer(buffer);
         sprintf(buffer,"Cliff Front Right: %i\n", 
            (uint16_t)((sensors[SenCliffFRSig1] << 8)| sensors[SenCliffFRSig0]));
         printBuffer(buffer);
         sprintf(buffer,"Cliff Right: %i\n", 
            (uint16_t)((sensors[SenCliffRSig1] << 8)| sensors[SenCliffRSig0]));
         printBuffer(buffer);
         sprintf(buffer,"Charging State: %i\n", sensors[SenChargeState]);
         printBuffer(buffer);
         sprintf(buffer,"Voltage: %i\n", 
            (uint16_t)((sensors[SenVolt1] << 8)| sensors[SenVolt0]));
         printBuffer(buffer);
         sprintf(buffer,"Current: %i\n", 
            (uint16_t)((sensors[SenCurr1] << 8)| sensors[SenCurr0]));
         printBuffer(buffer);
         sprintf(buffer,"Battery Temperature: %u\n", sensors[SenTemp]);
         printBuffer(buffer);
         sprintf(buffer,"Battery Charge: %i\n", 
            (uint16_t)((sensors[SenCharge1] << 8)| sensors[SenCharge0]));
         printBuffer(buffer);
         sprintf(buffer,"Battery Capacity: %i\n", 
            (uint16_t)((sensors[SenCap1] << 8)| sensors[SenCap0]));
         printBuffer(buffer);
         sei();			
         setSerialDestination(SERIAL_CREATE);
         canPrint=0;
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
