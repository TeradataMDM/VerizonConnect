@echo off
REM Copyright (c) 2006-2017 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 

set JAVA_HOME="C:\Program Files\Java\jdk1.8.0_161"
set PATH=%JAVA_HOME%\bin;%PATH%
set JAVA_OPTIONS=-Xms128m -Xmx1024m -Dsun.net.inetaddr.ttl=0



set TMP_VAR=%PLAFTORM_ENV%No
if not "%TMP_VAR%"=="No" goto end
 
set PLATFORM_ROOT=../../..
:setvar

set PLATFORM_LIB_DIR=%PLATFORM_ROOT%\lib

set OVERRIDE_DIR=%PLATFORM_ROOT%\lib\override
set PLATFORM_CORE_JARS=%PLATFORM_LIB_DIR%\td-platform-server.jar;%PLATFORM_LIB_DIR%\td-platform-util.jar

set PLATFORM_CFG=%PLATFORM_ROOT%\cfg\properties;%PLATFORM_ROOT%\cfg

set PLATFORM_3PLIB_DIR=%PLATFORM_LIB_DIR%\3plib

set MAIL_JAR=%PLATFORM_3PLIB_DIR%\mail.jar;%PLATFORM_3PLIB_DIR%\activation.jar
set DB_JAR=%PLATFORM_3PLIB_DIR%\jdbc2_0-stdext.jar;%PLATFORM_ROOT%\lib\terajdbc4.jar;%PLATFORM_ROOT%\lib\tdgssconfig.jar
set XML_JAR=%PLATFORM_3PLIB_DIR%\xercesImpl.jar;%PLATFORM_3PLIB_DIR%\xml-apis.jar;%PLATFORM_3PLIB_DIR%\serializer.jar;%PLATFORM_3PLIB_DIR%\xalan.jar;%PLATFORM_3PLIB_DIR%\jdom.jar;%PLATFORM_3PLIB_DIR%\commons-codec-1.10.jar;%PLATFORM_3PLIB_DIR%\commons-httpclient-3.1.jar;%PLATFORM_3PLIB_DIR%\not-yet-commons-ssl.jar;%PLATFORM_3PLIB_DIR%\wsdl4j.jar;%PLATFORM_3PLIB_DIR%\xmlsec.jar;%PLATFORM_3PLIB_DIR%\opensaml.jar;%PLATFORM_3PLIB_DIR%\wss4j.jar;%PLATFORM_3PLIB_DIR%\httpclient.jar;%PLATFORM_3PLIB_DIR%\httpcore.jar;%PLATFORM_3PLIB_DIR%\axiom-api.jar;%PLATFORM_3PLIB_DIR%\httpclient-4.2.5.jar;%PLATFORM_3PLIB_DIR%\httpcore-4.2.4.jar
set JCE_JAR=%PLATFORM_3PLIB_DIR%\jcert.jar
set POI_JARS=%PLATFORM_3PLIB_DIR%\poi-3.10.1-20140818.jar;%PLATFORM_3PLIB_DIR%\commons-fileupload.jar;%PLATFORM_3PLIB_DIR%\commons-logging.jar;%PLATFORM_3PLIB_DIR%\poi-ooxml-3.10.1-20140818.jar;%PLATFORM_3PLIB_DIR%\poi-ooxml-schemas-3.10.1-20140818.jar;%PLATFORM_3PLIB_DIR%\poi-scratchpad-3.10.1-20140818.jar;%PLATFORM_3PLIB_DIR%\poi-excelant-3.10.1-20140818.jar;%PLATFORM_3PLIB_DIR%\dom4j.jar;%PLATFORM_3PLIB_DIR%\geronimo-stax-api_1.0_spec.jar;%PLATFORM_3PLIB_DIR%\xmlbeans.jar; 
set JMS=%PLATFORM_3PLIB_DIR%\jms.jar
set CONNECTION_POOL=%PLATFORM_3PLIB_DIR%\commons-dbcp2-2.1.jar;%PLATFORM_3PLIB_DIR%\commons-pool2-2.3.jar;

SET OTHER_3PLIB=%PLATFORM_3PLIB_DIR%\fop.jar;

set CLASSPATH=.;%PLATFORM_CFG%;%CONNECTION_POOL%;%OVERRIDE_DIR%;%PLATFORM_CORE_JARS%;%PLATFORM_ROOT%\lib;%XML_JAR%;%MAIL_JAR%;%DB_JAR%;%JCE_JAR%;%BCM_WEB_CLASSPATH%;%OTHER_3PLIB%
set CLASSPATH=%CLASSPATH%;%POI_JARS%;%JAVA_HOME%\lib\tools.jar;%JMS%;%QUARTZ%;


 for %%A in (*servicesEnv.bat) do (
			 	call %%A
    )

REM  Mark the Teradata Platform environment as setup
REM
set PLAFTORM_ENV=Yes
rem echo setting platform env
REM  Clear the temp variable and leave this batch file
:end
set TMP_VAR=


