echo off
rem Path to DCC32.exe
SET DCCPATH=D:\Program Files\Embarcadero\RAD Studio\7.0\bin\
rem Path to project Dir
rem SET PROJECTPATH=D:\Program Files\Devart\MyDac for RAD Studio 2010\Demos\Win32\ThirdParty\FastReport\FR4\Delphi14\
SET PROJECTPATH=D:\Projects\Delphi\MyDac\Demos\Win32\ThirdParty\FastReport\FR4\Delphi14\
rem FastReport 4 LibD14 Path
SET FRLIBDLLPATH=D:\Program Files\FastReports\FastReport 4\LibD14


echo on
rem -----------------------BEGIN------------------------------------------
echo off
cd "%PROJECTPATH%"

rem FastReport
"%DCCPATH%DCC32.EXE" -LE. -B -JL frxDAC14.dpk -N0. -NO. -NH. -NB. -U"..\;%FRLIBDLLPATH%" -I"..\;%FRLIBDLLPATH%" -LU"dac140;fs14;fsDB14"
"%DCCPATH%DCC32.EXE" -LE. -B -JL frxMyDAC14.dpk -N0. -NO. -NH. -NB. -U"..\;%FRLIBDLLPATH%" -I"..\;%FRLIBDLLPATH%" -LU"dac140;fs14;fsDB14"
"%DCCPATH%DCC32.EXE" -LE. -B -JL dclfrxMyDAC14.dpk -N0. -NO. -NH. -NB. -U"..\;%FRLIBDLLPATH%" -I"..\;%FRLIBDLLPATH%" -LU"dac140;fs14;fsDB14"
rem FastScript
"%DCCPATH%DCC32.EXE" -LE. -B -JL fsDAC14.dpk -N0. -NO. -NH. -NB. -U"..\;%FRLIBDLLPATH%" -I"..\;%FRLIBDLLPATH%" -LU"dac140;fs14;fsDB14"
"%DCCPATH%DCC32.EXE" -LE. -B -JL fsMyDAC14.dpk -N0. -NO. -NH. -NB. -U"..\;%FRLIBDLLPATH%" -I"..\;%FRLIBDLLPATH%" -LU"dac140;fs14;fsDB14"
"%DCCPATH%DCC32.EXE" -LE. -B -JL dclfsMyDAC14.dpk -N0. -NO. -NH. -NB. -U"..\;%FRLIBDLLPATH%" -I"..\;%FRLIBDLLPATH%" -LU"dac140;fs14;fsDB14"