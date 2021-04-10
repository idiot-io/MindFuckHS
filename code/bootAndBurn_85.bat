

cd %~dp0
echo bootloader
C:\Users\Admin\AppData\Local\Arduino15\packages\arduino\tools\avrdude\6.3.0-arduino18/bin/avrdude -Cavrdude.conf -v -pattiny85 -cstk500v1 -PCOM4 -b19200 -e -Uefuse:w:0xFF:m -Uhfuse:w:0b11010111:m -Ulfuse:w:0xE2:m -Uflash:w:bootloaders/empty/empty_all.hex:i 

echo program

C:\Users\Admin\AppData\Local\Arduino15\packages\arduino\tools\avrdude\6.3.0-arduino18/bin/avrdude -Cavrdude.conf -v -pattiny85 -cstk500v1 -PCOM4 -b19200 -Uflash:w:AT852LFO.ino.hex:i -Ulfuse:w:0x62:m -Ulock:w:0xFF:m 

pause
