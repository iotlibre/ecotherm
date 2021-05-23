

#ifndef medida_18b20_h
#define medida_18b20_h

// *******************************************************
// ***** CONFIGURATION OF BUSES FORMED BY 18B20    *******
// *******************************************************

//pins assigned to buses 
#define BUSES 12,11,10

// *******************************************************

#include <OneWire.h>
#include <DallasTemperature.h>

OneWire ds18x20[] = { BUSES };
const int oneWireCount = sizeof(ds18x20)/sizeof(OneWire);

DallasTemperature busM[oneWireCount];

//Number of sensors detected on each bus 
uint8_t sensorsNumM[oneWireCount]={};
// Address of each detected sensor 
// maximum of 6 sensors on each bus, adress matrix
uint8_t addressM[oneWireCount][6][8]={};

// sum of the temperature values sampled
uint32_t tempValueM[oneWireCount][6];
uint16_t tempSamplesM[oneWireCount][6];

uint8_t busR = 0; // bus Routine
uint8_t devR = 0; // device Routine


/*****  Functions */

void temperatureSensorsBegin();
void getAdresses();
void doConversion();
void buildTemperatureMessage();
String printAddress(DeviceAddress deviceAddressPa);
String printShortA(DeviceAddress deviceAddressPa);
void copyDevice(DeviceAddress, uint8_t *);
void resetTemperatures();


void temperatureSensorsBegin() {

  for (int i = 0; i < oneWireCount; i++) {;
    busM[i].setOneWire(&ds18x20[i]);
    busM[i].begin();
  }

  getAdresses();
  doConversion();
  busR = 0; devR = 0;
  delay(100);
  
}

void getAdresses() {
  DeviceAddress tempDeviceAddress;
  for (uint8_t b = 0; b < oneWireCount; b++){

    sensorsNumM[b] = busM[b].getDeviceCount();
    if(DEBUG){Serial.print(F("number Of Devices: "));}
    if(DEBUG){Serial.println(sensorsNumM[b]);}

    for(int i=0;i<sensorsNumM[b]; i++){
      busM[b].getAddress(tempDeviceAddress, i); 
      if(DEBUG){Serial.print(F("tempDeviceAddress: "));}
      if(DEBUG){Serial.println(printAddress(tempDeviceAddress));}
      
      copyDevice(tempDeviceAddress, addressM[b][i]);
      if(DEBUG){Serial.print(F("addressM[b][i]: "));}
      if(DEBUG){Serial.println(printAddress(addressM[b][i]));}
    }
  }
}


void doConversion() {
  for (uint8_t b = 0; b < oneWireCount; b++){
    busM[b].setWaitForConversion(false);
    busM[b].requestTemperatures();
  }
}

void buildTemperatureMessage() {
  String messageToTx ="";
  
  for(int i=0;i<sensorsNumM[busR]; i++){
    if (DEBUG) {Serial.print(F("tempValueM[busR][i]: ")); Serial.println(tempValueM[busR][i]);}
    if (DEBUG) {Serial.print(F("tempSamplesM[busR][i]: ")); Serial.println(tempSamplesM[busR][i]);}
    
 
    float tempC = busM[busR].rawToCelsius(tempValueM[busR][i]/tempSamplesM[busR][i]);
    
    messageToTx += printShortA(addressM[busR][i]);
    messageToTx += ":";
    messageToTx += String(tempC,1);
    if (i != (sensorsNumM[busR] -1)) {messageToTx +=",";} 
       
  }
  if (DEBUG) Serial.println(F("messageToTx: "));
  if(messageToTx != "")Serial.println(messageToTx);
}


String printAddress(DeviceAddress deviceAddressPa){
  String string_temp_r="";
  for (uint8_t i = 0; i < 8; i++){
    if (deviceAddressPa[i] < 16) string_temp_r += ("0");
    uint8_t temp= (deviceAddressPa[i]);
    String stringTemp =  String(temp, HEX);
    string_temp_r = string_temp_r +stringTemp;
  }
  return string_temp_r;
}

String printShortA(DeviceAddress deviceAddressPa){
  String stringShort="";
  for (uint8_t i = 1; i < 3; i++){
    if (deviceAddressPa[i] < 16) stringShort += ("0");
    uint8_t temp= deviceAddressPa[i];
    stringShort += String(temp, HEX);
  }
  return stringShort;
}

void copyDevice(DeviceAddress deviceAddressOr, uint8_t * deviceAddressDest){
  unsigned char arrayIndex = 0 ;
  while(arrayIndex < 8) {
    deviceAddressDest[arrayIndex] = deviceAddressOr[arrayIndex] ;
    arrayIndex++ ;
  }
}


/*
 * 
Media de Temperatura
====================
La medida de temperatura se hace con sensores ds18b20
* La conversion lleva casi 1 segundo.
* Se realiza una conversion antes de cada pregunta: Case 0
* La temporizacion de la conversión se hace mediante registro de tiempo: case 1
* Mientras la conversion otras tareas son ejecutadas
* El tiempo de comunicación de la temperatura es de 14ms: case 2
* Transmitir las temperaturas es otra tarea: case 3

*/

/******* contador step *****************/
// => comprobar que la variable estática funciona bien

struct temperatureStep{
  uint8_t  nextTask;
  uint32_t time_output;
  
  void doStep(){
    switch (nextTask) {
      case 0:
        doConversion();
        busR =0; devR=0;
        time_output= millis()+1000;
        nextTask =1;
        break;
        
      case 1:
        if(millis()>time_output) nextTask = 2;
        else nextTask =1;
        break;
        
      case 2:
        if(busR < oneWireCount){
          if(devR < sensorsNumM[busR]){
            int16_t temp = busM[busR].getTemp(addressM[busR][devR]);
            tempValueM[busR][devR] += temp;
            tempSamplesM[busR][devR]++;
            devR++;  
            if (DEBUG) Serial.println(temp);
          }
          else {busR++; devR=0;} 
        }
        else{ nextTask = 0;}
        break;

      case 3:
        busR=0; devR=0;
        nextTask=4;
        break;
                
      case 4:
        if(busR < oneWireCount){
          buildTemperatureMessage();
          busR++;
          nextTask=4;
        }
        else{resetTemperatures();nextTask=0;}
        break;
        
      default:
        // statements
        break;
    } // switch
  }// doStep
};// struct

temperatureStep TemperatureStep = {0,millis()};

void resetTemperatures(){
  for (uint8_t b = 0; b < oneWireCount; b++){
    for(int i=0;i<sensorsNumM[b]; i++){
      tempValueM[b][i] = 0;
      tempSamplesM[b][i] = 0;
      if(DEBUG){Serial.print(F("tempValueM, tempSamplesM =0 "));Serial.println(printAddress(addressM[b][i]));}
    }
  }
}

/********FIN contador step *************/

#endif
