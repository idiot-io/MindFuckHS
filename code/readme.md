## code for the mindfuck headset

### Setup
get [Arduino IDE 1.8.13](https://downloads.arduino.cc/arduino-1.8.13-windows.zip)  

**note:** if you have previous versions your Preferences might be corrupted.  
you can find its location in the`Preferences` tab.  

<img src="https://user-images.githubusercontent.com/222526/114276727-942cbe00-9a30-11eb-9427-593a1533f6f0.png" width=50%>

close all arduino instances and remove (after backup) your arduino profile folder.  
restart arduino 1.8.13 and go back to Preferences. 

add ATTinyCore board repo to the `Additional Boards Manager URLs:` list  
<img src="https://user-images.githubusercontent.com/222526/114276819-03a2ad80-9a31-11eb-81dc-36c7738a49d7.png" width=50%>

you are now ready to upload , if you want to recompile, go to Compile section.
### Upload 
to upload for ATtiny85/45 set your burning platform

1. wireup your ATtiny SPI pins to an arduino uno as uploader
2. click the .bat file (for windows)
3. check your serial port settings in the `bootAndBurn_XX.bat`, change to fit your serail port  
example- if your Serial port is `COM3`, search and replace `-PCOM4` to `-PCOM3` in the relevant .bat file.

code lifted and moded slightly from [ACS](https://robstave.github.io/acs/), thanks man!

### Compile
the code folder in this git repo ahs a baked HEX file re4ady for both attiny85/45.
if you want to change add to the code.  you will need to get the right board def3ntions. 

go to `Tools/Boards` and choose the "no bootloader" ATtiny85 option

<img src="https://user-images.githubusercontent.com/222526/114277185-d525d200-9a32-11eb-8909-ce73fa5de398.png" width=50%>

go back to `Preferences` section and check Compilation and upload checkboxs. 

<img src="https://user-images.githubusercontent.com/222526/114277419-c986db00-9a33-11eb-84ec-29bb5e8551ff.png" width=50%>

mess with the code and hit upload

this will verify (compile) your code without uploading it. 
but **we cant use arduino to upload as there is some fuse setting missing**.  
so we need to get the path to the hex files we generated , find it in the arduino console. 
copy the output and open in notepad++
one of the last lines will refer to the temporary compile folder, should look something like this
```bash
"C:\\Users\\user\\AppData\\Local\\Temp\\arduino_build_760134/Blink.ino.elf" 
"C:\\Users\\user\\AppData\\Local\\Temp\\arduino_build_760134/AT852LFO.ino.hex"
"C:\\Users\\user\\AppData\\Local\\Arduino15\\packages\\arduino\\tools\\avr-gcc\\7.3.0-atmel3.6.1-arduino7/bin/avr-size" -A "C:\\Users\\user\\AppData\\Local\\Temp\\arduino_build_760134/AT852LFO.ino.elf"
```
open that `C:\\Users\\user\\AppData\\Local\\Temp\\arduino_build_760134` folder in explorer and get your fresh HEX file.  
drop it in the the code folder and goto upload section. 
