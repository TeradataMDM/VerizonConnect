@echo off
REM Copyright (c) 2006-2017 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 


call .\platformEnv.bat
title Teradata Platform Server
%JAVA_HOME%\bin\java %JAVA_OPTIONS%  com.teradata.platform.core.util.StartPlatformServer startup_config.xml 

exit
