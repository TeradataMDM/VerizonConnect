@echo off
REM Copyright (c) 2006-2017 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 


echo %DATE:~4,10%  %TIME%
echo Calling custom_executeGenDB.bat

call .\custom_executeGenDB.bat > ..\log\custom_gendb.log 2>&1

