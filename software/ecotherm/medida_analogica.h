/*
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <http://www.gnu.org/licenses/>. 
*/

#ifndef medida_analogica_h
#define medida_analogica_h

uint8_t analogR = 0; // analogic Routine

struct PinRead {
    
  uint8_t number;
  const char* name;
  uint16_t scale;
  uint32_t value;
  uint16_t samples;
  
  
// private:
  void analogicRead() {
    value += analogRead(number);
    samples ++;
    // if(1)Serial.print(name);
    // if(1)Serial.print(" ");
    // if(1)Serial.println(value);
  }
};

PinRead analogicPins[] = {
  {14,"a0",5000,0,0},
  {15,"a1",5000,0,0},
  {16,"a2",5000,0,0},
  {17,"a3",5000,0,0},
  {18,"a4",5000,0,0},
  {19,"a5",5000,0,0},
  {20,"a6",5000,0,0},
  {21,"a7",5000,0,0},
};

const uint8_t nAnalogicPins = sizeof(analogicPins)/sizeof(*analogicPins);

void buildAnalogicMessage() {
  String message_to_tx ="";
  
  for(uint8_t i=0;i<nAnalogicPins; i++){
       
    message_to_tx += analogicPins[i].name;
    message_to_tx += ":";
    // analogicPins[i].scale
    message_to_tx += String((analogicPins[i].value / analogicPins[i].samples)* analogicPins[i].scale  / 1023);
    analogicPins[i].value = 0;
    analogicPins[i].samples = 0;
    if (i != (nAnalogicPins -1)) {message_to_tx +=",";} 
    analogicPins[i].value = 0;
    analogicPins[i].samples = 0;  
    
  }
  if (DEBUG) {Serial.print(F("message_to_tx: "));Serial.println(message_to_tx);}
  if(message_to_tx != "")Serial.println(message_to_tx);
}

struct analogicStep{
  uint8_t next_task;
  
  void doStep(){
    switch (next_task) {
      case 0:
        if(analogR < nAnalogicPins){  
          analogicPins[analogR].analogicRead();
          analogR++ ;
        }
        else {analogR = 0; }   
        break;
        
      case 1:
        buildAnalogicMessage();
        next_task=0;
        break;
        
      default:
        // statements
        break;
    }
  }
};

analogicStep AnalogicStep = {0};

#endif
