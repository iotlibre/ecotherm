ecoTherm
==========
ecoTherm esta diseñado para medir la energía térmica de una instalación que disponga de uno o varios circuitos de agua a diferentes temperaturas. Este dispositivo  puede medir:

* Temperatura mediante sondas del tipo 18b20
* Caudal a través de pulsos proporcionados por contadores de agua
* Valores analógicos tanto de voltaje como de corriente. 

Para la medida de temperaturas y los valores analógicos, las muestras se toman en intérvalos de un segundo. El valor proporcionado, cada vez que se transmite la información, es la media de todas las muetras tomadas.

Los pulsos se miden mediante interrupciones y el valor proporcionado, en cada periodo de reporte, es el numero de interrupciones acumulado desde que la última vez que se reinición el equipo.

ecoThermal se puede instalar sobre carril DIN a una distancia que permita la comunicación con las sensores implementados en la instalación. En un edificio podemos tener tantos dispositivos como sean necesarios y el servidor los integrará en la misma instalación sin necesidad de configuraciones adicionales o cambios en el Firmware. La comunicación se hace mediante wifi por lo que no es necesario el cableado de datos al equipo. Solamente es preciso que ecoTherm esté dentro de la cobertura de la red wifi del edificio.

Para el uso de ecoTherm, no son necesarios conocimientos de informática aunque todos los desarrollos y el hardware están hechos bajo licencias libres lo que permite la modificación y mejora de las funcionalidades.

.. image:: ./images/ecother_board.png

Principales características
---------------------------
* 15 entradas configurables
* Admite hasta 28 sondas de temperatura repartidas en 7 buses
* Es posible integrar hasta 15 medidas de caudal
* Puede medir hasta 8 Valores analógicos
* Precisión en las medida de temperatura: ± 0,5 °C
* La precisión de las medidas analógicas depende de las sondas utilizadas.
* La precisión de las medias de caudal corresponde a los medidores implementados
* Comunicación a Internet se hace por WIFI local
* Configurable mediante Web
* Estandard: IEEE 802.11 b/g/n
* Alimentación a 220 voltios de corriente alterna. Rango: 85 ~ 264VAC
* Montaje en carril din
* La PCB integra un Arduino nano con el ESP8266 12E
* Implementa el protocolo MQTT
* Compatible con  `emonCMS <https://emoncms.org>`_

Puesta en marcha
--------------
La puesta a punto de ecoThermal consta de tres partes:

* La configuración del hardware
* El firmware de Arduino
* La configuración en la instalación

La configuración del hardware
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
El hardware por defecto esta preparado para 8 entradas analógicas, 3 caudales y 16 sondas de temperatura repartidas en 4 buses. Sin embargo esta configuración se puede modificar cambiando los componentes de superficie de la PCB hasta la combinación de medidas que nos se adapte mas al proyecto.

El firmware de Arduino
~~~~~~~~~~~~~~~~~~~~~~
El firmware que esta cargado, por defecto, en el Arduino nano funciona correctamente con la configuración, del hardware, por defecto. En el caso de cambiar el hardware también es necesario cambiar el firmware del Arduino integrado en la PCB y que se puede encontrar en el código fuente

La configuración en la instalación
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
En este punto se definen los parámetros del servidor de destino y la wifi local a la que va a estar conectado el dispositivo. Con este fin, la primera vez que se pone en servicio el ESP 8266 12E creará su propio punto de acceso, su propia red WIFI. Conectándose a cualquier dirección, a través de este punto de acceso, nos aparecerá la página de configuración del ESP. Tengase en cuenta que una vez configurado el ESP y conectado a una red WIFI el router le asignará una única dirección IP a la que será necesario acceder para cambiar la configuración
Los detalles de la configuración del ESP los puedes encontrar en el `repositorio <ttps://github.com/openenergymonitor/EmonESP>`_

Código fuente
~~~~~~~~~~~~~
El código del firmware y la documentación del hardware se puede encontrar en el `repositorio <https://github.com/iotlibre/ecoTherm>`_


