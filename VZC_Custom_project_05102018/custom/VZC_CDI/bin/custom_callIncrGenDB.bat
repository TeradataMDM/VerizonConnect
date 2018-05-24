@echo off
REM Copyright (c) 2006-2017 by Teradata Corporation. 
REM All Rights Reserved. 
REM TERADATA CONFIDENTIAL AND TRADE SECRET 


echo %DATE:~4,10%  %TIME%
echo Calling custom_executeIncrGenDB.bat

call .\custom_executeIncrGenDB.bat > ..\log\custom_incr_gendb.log 2>&1
