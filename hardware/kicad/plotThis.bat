:: this (windows) batch script will turn your svg2shnzn .kicad_pcb file to a gerber
:: using kicad python and gerbv

:: SETUP:
:: you will now need to adapt the path to your kicad bin folder and gerbv.exe location. 

:: USAGE: drag the xxx.kicad_pcb file genearted by the export command of svg2shnzn pnto this script. 
:: i usally export my kicad_pcb file to a kicad folder under the hardware/board directory. 
:: but it can live anywhere
@echo off

set Path=C:\bin\KiCad\bin\
set gerbv_path=C:\BIN\gerbv

if exist %Path% (
	echo found Kicad at %Path%
    goto :findGerbv
) else (
    echo Cant find Kicad folder!!!!
	echo d/l from http://kicad.org
	goto :EOL
)
:findGerbv
if exist %gerbv_path% (
	echo found gerbv at %gerbv_path%
    goto :run
) else (
    echo Cant find gerbv folder!!!!
	echo d/l from https://sourceforge.net/projects/gerbv-portable/
	goto :EOL
)


:run
echo .
pushd %~dp0
echo first we delete the previous plot folder
rmdir /s %~dp1\plot
python.exe kicad_gerber_gen.py %1 %gerbv_path%

:EOL
pause
::uncomment pause to debug
::pause