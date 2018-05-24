@echo off
REM Copyright (c) 2006-2017 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 


rem run this file to register load to your database


echo Setting Env 
cd ..\..\bin
@call .\platformEnv.bat
set CLASSPATH=..\batch;%CLASSPATH%
rem echo %CLASSPATH%

set PAUSE_FLAG=%1
if "%PAUSE_FLAG%"=="" goto :start
if not "%PAUSE_FLAG%"=="pause" goto :error

:start



echo "<!--***********Starting Registerload ******************-->"


java com.teradata.platform.core.net.Poster rest ../cfg/properties/xserver.xml MDMServices ../batch/preload/registerLoad.xml

%PAUSE_FLAG%

pause
:error
echo Input value has to be either spaces or "pause"