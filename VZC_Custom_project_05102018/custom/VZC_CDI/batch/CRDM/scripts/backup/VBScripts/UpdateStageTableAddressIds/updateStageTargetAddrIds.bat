@echo off
REM ***********************************************************************************************************
REM SCRIPT:              updateStageTargetAddrIds.bat 
REM DESCRIPTION:         This script update the stage table with address ids and match type
REM DEPENDENCY:           
REM INPUT:               bteq template
REM OUTPUT:              bteq file
REM ERRORS:
REM SPECIAL INSTRUCTIONS:
REM
REM CHANGE LOG:
REM VERSION              DATE                 AUTHOR                          CHANGES
REM 1.00                05/08/2018           CA186004                        Created
REM ***********************************************************************************************************
echo Stage tables with target address ids update - started
call ..\cfg\load_config.bat ..\cfg\config.properties
cscript ..\cfg\file_converter.vbs updateStageTargetAddrIds.btqt updateStageTargetAddrIds.btq
if ERRORLEVEL 1 (
   echo Error encountered in file conversion
   set errorlevel=1
   goto end
)
bteq < updateStageTargetAddrIds.btq >> updateStageTargetAddrIds.log
del updateStageTargetAddrIds.btq
echo Stage tables with target address ids update - completed
:end
timeout /t 3