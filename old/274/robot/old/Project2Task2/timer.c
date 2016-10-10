#include "timer.h"    // Declaration made available here


// Timer variables defined here
volatile uint16_t delayTimerCount = 0;            // Definition checked against declaration
volatile uint8_t  delayTimerRunning = 0;          // Definition checked against declaration
volatile uint8_t canPrint=0;
volatile uint16_t senseTimerCount=100;
volatile uint8_t canSense=0;

ISR(USART_RX_vect) {  //SIGNAL(SIG_USART_RECV) 
  // Serial receive interrupt to store sensor values
  
  // CSCE 274 students, I have only ever used this method 
  // when retrieving/storing a large amount of sensor data. 
  // You DO NOT need it for this assignment. If i feel it 
  // becomes relevant, I will show you how/when to use it.
}

//SIGNAL(SIG_OUTPUT_COMPARE1A)
ISR(TIMER0_COMPA_vect) {
  // Interrupt handler called every 1ms.
  // Decrement the counter variable, to allow delayMs to keep time.
  if(delayTimerCount != 0) {
    delayTimerCount--;
  } else {
    delayTimerRunning = 0;
  }

  if(senseTimerCount !=0) {
    senseTimerCount--;
  } else {
    canSense =1;
  }
}

ISR(TIMER1_COMPA_vect){
  canPrint=1;
}

void setupTimer(void) {
// Set up the timer 1 interupt to be called every 1ms.
// It's probably best to treat this as a black box.
  TCCR0A = _BV(WGM01);
  TCCR0B = (_BV(CS00) | _BV(CS02));
    // TCCR1B = 0x0C;
  OCR0A = 17;
  TIMSK0 = _BV(OCIE0A);
    // TIMSK1 = 0x02;

  // Timer 1 setup
  TCCR1A = 0x00;
  TCCR1B = (_BV(WGM12) | _BV(CS10) | _BV(CS12));
    // TCCR1B = 0x0C;
  OCR1A = 17999;
  TIMSK1 = _BV(OCIE1A);
    // TIMSK1 = 0x02;


}

// Delay for the specified time in ms without updating sensor values
void delayMs(uint16_t time_ms)
{
  delayTimerRunning = 1;
  delayTimerCount = time_ms;
  while(delayTimerRunning) ;
}
