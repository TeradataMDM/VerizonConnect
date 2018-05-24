@echo off
REM Copyright (c) 2006-2017 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 

set CUSTOM_ROOT=..
set CUSTOM_CFG=..\cfg;..\cfg\properties;..\cfg\xservice\VZC_CDI;..\cfg\xservice\VZC_CDI\mdm_setup
set CLASSPATH=%CUSTOM_CFG%;%CLASSPATH%;
