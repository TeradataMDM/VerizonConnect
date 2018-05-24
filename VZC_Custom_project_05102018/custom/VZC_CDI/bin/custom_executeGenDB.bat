@echo off
REM Copyright (c) 2006-2017 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 


echo %DATE:~4,10%  %TIME%
echo Setting up Database Schema and Data

:start
call .\platformEnv.bat
set CLASSPATH=.;%CLASSPATH%

call ..\..\..\bin\updateXserver.bat

echo %DATE:~4,10%  %TIME%
echo performing Service Setup
call .\serviceSetup.bat


echo %DATE:~4,10%  %TIME%
echo Generating Schema
%JAVA_HOME%\bin\java %JAVA_OPTIONS% com.teradata.platform.core.util.SchemaGenHelper custom_SchemaGen_MetaInfo.xml 



:end
