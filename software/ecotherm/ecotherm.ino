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


/*


Medida continua
===============
Medida contiuna de:   0: Pulsos, 
                      1: Valores Analógicos 
                      2: Temperaturas
                        
* Cada ciclo se hace solo una tarea
* El obhetivo es habilitar las interrupciones a los 10 ms

Al final del ciclo (60.000 ms)
==============================
* Imprimir valores de  0: Pulsos, 
                       1: Valores Analógicos 
                       2: Temperaturas
                        
* Reiniciar registros: 1: Valores Analógicos
    (numero samples)   2: Temperaturas
              

Pulsos
=======
Contados mediante interrupciones PCINT
Cada interrupción inhabilita otras para evitar rebotes
La inhabilitacion es durante 10ms 
Los 10 ms se comprueban cada ciclo
A estos ms hay que sumar el tiempo de las tareas activas
la mas larga es la lectura de temperatura: 14ms

Valores Analógicos
==================
Se suman todos los valores durante el ciclo
El resultado es la media

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
#define DEBUG 0

#define BPS 115200

#define TX_PERIOD 59000

#include "contador_pcint.h"

#include "medida_18b20.h"

#include "medida_analogica.h"

uint32_t t_last_tx;


void setup() {

  Serial.begin(BPS);
  if(DEBUG)Serial.println(F("Measurement start "));
  if(DEBUG)Serial.println(F("temperature, flow rate and analog values "));

  //analogReference(INTERNAL);

  temperatureSensorsBegin();

  pcintCounterSetup();

  t_last_tx= millis();

  delay(100);
}

void loop() {

  CounterStep.doStep();
  TemperatureStep.doStep();
  AnalogicStep.doStep();  

  uint32_t current_time= millis();

  if (current_time < t_last_tx) t_last_tx = current_time;
  if ((current_time - t_last_tx) > TX_PERIOD){
    
    if(DEBUG)Serial.print(F("****** TX- sgs: "));
    if(DEBUG)Serial.println(millis() / 1000);
    
    t_last_tx = current_time;

    AnalogicStep.next_task=1;    //Transmit the values of the parameters 
    CounterStep.nextTask=1;      //Transmit the values of the parameters 
    TemperatureStep.nextTask=3;  //Transmit the values of the parameters 
  }
}
