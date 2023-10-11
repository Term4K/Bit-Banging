# Different Bit Banging Projects


This has examples of bit banging in different instances. This is the practice of communicating with a chip or other device without the use of dedicated hardware. Software takes on that role and does the data transmission.




## EEPROM


This is the first one that was completed and it includes the ability to write to an external EEPROM in 8 & 16 bit modes. You can switch between the two and write the preprogrammed messages. It also includes the ability to enable write and disable it.


## LED AND KEY


The next project is the led_and_key, this uses a TM1638 chip connected to 8 buttons and 8 LED segments. Using bit banging you can increment the counts on the LEDs and decrement them based on positions of LEDs relative to the buttons. This also featured the ability to roll over the values to the next LED segment.


## Sonar


This project is a continuation of the previous LED AND KEY but now the right four LED segments are used to set the distance to which the sonar reads and the left four are used to show the amount of people passed by. This is a basic people counter as they pass by a doorway.


## 8051


### Parts
```
QX-mini51
I2C Device (PCF8574)
1602 LCD with I2C Backpack
4 LEDs
4 Button Switches
```

Using the QX-mini51 which has a STC89 chipset based on the 8051 architecture we do some actions with the peripherals. These include incrementing the 7 segment LEDs when pressing the switches on the board. There is a switch reserved to change the LEDs pattern mode which is also on the board. These LEDs switch between Cyclone, Dual Cyclone and Binary patterns. There is also the I2C portion which uses the I2C device to check the status of the 4 button switches which are mounted to a separate breadboard. Depending on the button pressed the corresponding LED is lit up via the I2C device. And the last portion is the LCD which is also controlled through the same I2C lines using a different address.







