### code for the mindfuck headset

to **upload** for ATtiny85/45 set your burning platform

1. wireup your ATtiny SPI pins to an arduino uno as uploader
2. click the .bat file (for windows)
3. check your serial port settings in the `bootAndBurn_XX.bat`, change to fit your serail port  
example- if your Serial port is `COM3`, search and replace `-PCOM4` to `-PCOM3` in the relevant .bat file.

code lifted and moded slightly from [ACS](https://robstave.github.io/acs/), thanks man!
