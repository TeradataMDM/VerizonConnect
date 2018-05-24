@echo off
REM Copyright (c) 2006-2017 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 


rem run this file to run matching and survivorship process for CRDM model

echo Setting Env 
rem pushd ..\..\..\bin
pushd E:\Teradata\MDM\MDM4.1.0\custom\VZC_CDI\bin
call .\platformEnv.bat
set CLASSPATH=..\batch\CRDM;%CLASSPATH%
REM echo %CLASSPATH%

set PAUSE_FLAG=%1
if "%PAUSE_FLAG%"=="" goto :start
if not "%PAUSE_FLAG%"=="pause" goto :error

:start

echo %DATE:~4,10% %TIME%
echo "<!--***********CRDM Orchestration - started ******************-->"
%JAVA_HOME%\bin\java com.teradata.platform.core.net.Poster REST ..\cfg\properties\xserver.xml BCM_MASTER ..\CRDM\execCRDMOrchestration.xml
echo %DATE:~4,10% %TIME%
echo CRDM Orchestration - completed
pause;
%PAUSE_FLAG%