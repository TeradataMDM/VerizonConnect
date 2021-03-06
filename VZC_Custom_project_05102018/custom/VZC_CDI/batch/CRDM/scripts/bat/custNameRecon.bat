@echo on
:: ===============================================================================
:: Job Script Name : custNameRecon.bat
:: Called by       :  
:: Command line    : custNameRecon.bat
::                 :
:: Usage           : 
:: 	               :
:: Purpose         : This will reconciliation of name matching output.
:: Author          : Chandra Adapa, Teradata
:: Date            : 09-Nov-2017
:: Version         : V1.0
:: ------------------------------------------------------------------------------
:: Change History :
:: Ver  | Date        |  Modified By           |  Change Description
:: -----+-------------+------------------------+---------------------------------
::
:: ===============================================================================


:: Go to path where batch scripts are present

cd ..\batch\CRDM\scripts\bat

:: Call batch file to setup global variables this file should be in the directory with all the job scripts

CALL Setup_Env_variable.bat

:: Delete files which created by export script

:: Set Local JOB Variables
SETLOCAL
SET LOG_NAME=custNameRecon

:: Parse the date (e.g., Fri 05/11/2018)
SET YYYY=%date:~10,4%
SET MM=%date:~4,2%
SET DD=%date:~7,2%

:: Parse the time (e.g., 09:01:01.50)
SET HH=%time:~0,2%
if %HH% lss 10 (set HH=0%time:~1,1%)
SET NN=%time:~3,2%
SET SS=%time:~6,2%
SET MS=%time:~9,2%

:: Delete the temp batch script if already present

::del "%LOGDIR%Updated_custNameRecon.btq"

:: Set the DATE TIME format
SET START_DATETIME=%YYYY%%MM%%DD%%HH%%NN%%SS%%MS%

SET LOGFILE=%LOG_NAME%_%START_DATETIME%.log

copy %BTEQDIR%custNameRecon.btq %LOGDIR%Updated_custNameRecon.btq

find_replace.vbs "%LOGDIR%Updated_custNameRecon.btq" "TDHOST" "%TDHOST%"
find_replace.vbs "%LOGDIR%Updated_custNameRecon.btq" "USERNAME" "%USERNAME%"
find_replace.vbs "%LOGDIR%Updated_custNameRecon.btq" "PASSWD" "%PASSWD%"
find_replace.vbs "%LOGDIR%Updated_custNameRecon.btq" "MDMDB" "%MDMDB%"
find_replace.vbs "%LOGDIR%Updated_custNameRecon.btq" "MDMVIEW" "%MDMVIEW%"
find_replace.vbs "%LOGDIR%Updated_custNameRecon.btq" "MDMSTAGE" "%MDMSTAGE%"
find_replace.vbs "%LOGDIR%Updated_custNameRecon.btq" "MDMCRDM" "%MDMCRDM%"

SET ERRORLEVEL=
bteq < %LOGDIR%Updated_custNameRecon.btq >> %LOGDIR%%LOGFILE%
IF NOT %ERRORLEVEL% == 0 GOTO LOADError

GOTO eof

:: ------------------------------------------------------------------------------
:: log to LOAD_ERROR_LEVEL if the bteq call failed
:: ------------------------------------------------------------------------------

:LOADError

EXIT /B 1

:eof
EXIT /B 0