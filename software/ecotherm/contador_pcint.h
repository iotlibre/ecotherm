
#ifndef contador_pcint_h
#define contador_pcint_h

/*********************************/
/** pulse counter definition *****/
/*********************************/

// {arduino_pin, sensor_name, pulse_counter, disable_until_time}
#define MONITOREDPINS    {2,"e4",0,MAXTIME}, \
                         {3,"e3",0,MAXTIME}, \
                         {4,"e2",0,MAXTIME}, \
                         {5,"e1",0,MAXTIME},

// *******************************************************

#define MAXTIME 4294967295

// Time for which the rebounds (transient phenomena),
// produced in the connection, are not taken into account 
#define REBOUNDTIME 50

#include <YetAnotherPcInt.h>

/*****  Declaration of functions  */

struct PinListener {
  uint8_t number;
  const char* name;
  uint32_t pulse;
  uint32_t outputTime ;

  void begin();
  void end();
   
private:
  void changed(bool pinstate);
  static void changed(PinListener* _this, bool pinstate);
};

void pcintCounterSetup();

void allowPcintPending();

void buildPulsesMessage();

struct counterStep{
  uint8_t nextTask;
  void doStep();
};


/*****  Definicion  de funciones */

void PinListener::begin() {
  pinMode(number, INPUT_PULLUP);
  PcInt::attachInterrupt(number, PinListener::changed, this, CHANGE);
}

void PinListener::end() {
  PcInt::detachInterrupt(number);
}

void PinListener::changed(bool pinstate) {
  this->end();
  outputTime= millis()+REBOUNDTIME;    
  if(pinstate==0) pulse++;
  if(DEBUG)Serial.print(name);
  if(DEBUG)Serial.print(pinstate ? " HI " : " LO ");
  if(DEBUG)Serial.println(pulse);
}
  
static void PinListener::changed(PinListener* _this, bool pinstate) {
  _this->changed(pinstate);
}

PinListener monitoredPins[] = { MONITOREDPINS };

const uint8_t pcintPins = sizeof(monitoredPins)/sizeof(*monitoredPins);

void pcintCounterSetup(){
  for (int i=0; i<pcintPins; i++) {
    monitoredPins[i].begin();
  }
}

void allowPcintPending(){
  for (int i=0; i<pcintPins; i++) {
    if(millis() > monitoredPins[i].outputTime){ 
      monitoredPins[i].outputTime= MAXTIME;
      monitoredPins[i].begin();
    }   
  }
}

void buildPulsesMessage() {
  uint8_t numberOfDevices = pcintPins;
  String messageToTx ="";
  
  for(uint8_t i=0;i<numberOfDevices; i++){
       
    messageToTx += monitoredPins[i].name;
    messageToTx += ":";
    messageToTx += String(monitoredPins[i].pulse);
    if (i != (numberOfDevices -1)) {messageToTx +=",";}   
    
  }
  if (DEBUG) {Serial.print(F("messageToTx: "));Serial.println(messageToTx);}
  if(messageToTx != "")Serial.println(messageToTx);

}

void counterStep::doStep(){
  switch (nextTask) {
    case 0:
        allowPcintPending();
      break;     
    case 1:
      allowPcintPending();
      buildPulsesMessage();
      allowPcintPending();
      nextTask=0;
      break;
    default:
      // statements
      break;
  }
}

counterStep CounterStep = {0};

#endif
