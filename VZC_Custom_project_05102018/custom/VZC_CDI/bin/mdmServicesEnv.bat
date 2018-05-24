@echo off

rem Bat file for setting Environment Variables related to MDM services
rem Will be invoked from platform_env.bat file
rem Uses variables PLATFORM_LIB_DIR ,PLATFORM_3PLIB_DIR defined in platform_env.bat

set MDM_SERVICES_JAR=%PLATFORM_LIB_DIR%/td-mdm-services.jar;loqate.jar;%PLATFORM_LIB_DIR%\td-mdm-upgrade.jar;


set MDM_SERVICES_CLASSPATH=%MDM_SERVICES_JAR%;../cfg/xservice/toolkit;

set CLASSPATH=%CLASSPATH%;%MDM_SERVICES_CLASSPATH%
