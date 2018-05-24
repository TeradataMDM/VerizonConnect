REM Copyright (c) 2006-2017 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 

@call .\platformEnv.bat
%JAVA_HOME%\bin\java com.teradata.platform.core.net.Poster REST xserver.xml PLATFORM shutdown.xml
exit