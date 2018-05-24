@echo off
REM Copyright (c) 2006-2017 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 


call .\platformEnv.bat
set CLASSPATH=.;%CLASSPATH%

echo %DATE:~4,10%  %TIME%
echo performing Service Setup
%JAVA_HOME%\bin\java %JAVA_OPTIONS% com.teradata.platform.core.mcore.mdmSpecGen.MdmSpecGen ../cfg/mdm-spec-gen.xml  ../../../cfg/tddb.keywords
