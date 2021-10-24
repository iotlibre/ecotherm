ecoTherm
==========

.. image :: ./images/ecotherm_device.png

ecoTherm is designed to measure the thermal energy of an installation that has one or more water circuits at different temperatures. This device can measure:

* Temperature using 1-wire sensors
* Flow through pulses provided by water meters
* Analog values ​​for both voltage and current.

For temperature measurement and analog values, samples are taken in one-second intervals. The value provided, each time the information is transmitted, is the average of all the samples taken.

The pulses are measured by interruptions and the value provided, in each reporting period, is the number of interruptions accumulated since the last time the equipment was restarted.

ecoThermal can be installed on a DIN rail at a distance that allows communication with the sensors implemented in the installation. In a building we can have as many devices as are necessary and the server will integrate them in the same installation without the need for additional configurations or firmware changes. Communication is done through Wi-Fi so data cabling to the equipment is not necessary. Only ecoTherm needs to be within the coverage of the building's Wi-Fi network.

To use ecoTherm, computer knowledge is not necessary, although all developments and hardware are made under free licenses, which allows the modification and improvement of functionalities.

Main features
-------------
* 15 configurable inputs
* Supports up to 28 temperature probes spread over 7 buses
* It is possible to integrate up to 15 flow measurements
* Can measure up to 8 analog values
* Accuracy in temperature measurements: ± 0.5 ° C
* The precision of analog measurements depends on the probes used.
* The precision of the flow averages corresponds to the meters implemented
* Internet communication is done by local WIFI
* Configurable via Web
* Standard: IEEE 802.11 b / g / n
* 220 volt AC power supply. Range: 85 ~ 264VAC
* Din rail mounting
* The PCB integrates an Arduino nano with the ESP8266 12E
* Implements the MQTT protocol
* Compatible with `emonCMS <https://emoncms.org>`_

Hardware
--------
The hardware design is based on two PCBs that are interconnected by a ribbon cable. These two cards are machined in a din rail housing. This entire system is powered by 5 volt power supply. 

.. image :: ./images/ecotherm_board.png


Start up
--------
The ecoThermal set-up consists of three parts:

* Hardware configuration
* The Arduino firmware
* Configuration on installation

Hardware configuration
~~~~~~~~~~~~~~~~~~~~~~
The default hardware is prepared for 8 analog inputs, 3 flow rates and 16 temperature probes divided into 4 buses. However, this configuration can be modified by changing the surface components of the PCB until the combination of measures that best suits the project.

Arduino firmware
~~~~~~~~~~~~~~~~
The firmware that is loaded, by default, in the Arduino nano works correctly with the hardware configuration, by default. In the case of changing the hardware, it is also necessary to change the firmware of the Arduino integrated in the PCB and that can be found in the source code.

An ESP 8266 has been used for the internet connection. The firmware used for its operation has been developed by Open Energy Monintor and can be found at https://github.com/openenergymonitor/EmonESP. 

Configuration at installation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
At this point, the parameters of the destination server and the local Wi-Fi to which the device will be connected are defined. To this end, the first time the ESP 8266 12E is put into service it will create its own access point, its own WIFI network. By connecting to any address, through this access point, the ESP configuration page will appear. Bear in mind that once ESP is configured and connected to a WIFI network, the router will assign you a single IP address that will be necessary to access to change the configuration.
The ESP configuration details can be found in the `repository <https: //github.com/openenergymonitor/EmonESP>`_

Source code
~~~~~~~~~~~
Firmware code and hardware documentation can be found in this `repository <https://github.com/iotlibre/ecoTherm>`_ 


