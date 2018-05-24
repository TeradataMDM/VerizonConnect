# Copyright 2006-2017 by Teradata Corporation.
# All Rights Reserved.
# TERADATA CONFIDENTIAL AND TRADE SECRET

#!/bin/sh

echo $(date +%m/%d/%Y-%T)
echo Setting up Database Schema and Data

echo $(date +%m/%d/%Y-%T)
echo Setting environment
. ./platformEnv.sh
export CLASSPATH=.:$CLASSPATH

. ../../../bin/updateXserver.bat

echo $(date +%m/%d/%Y-%T)
echo performing Service Setup
. ./serviceSetup.sh

echo $(date +%m/%d/%Y-%T)
echo Generating Schema
$JAVA_HOME/bin/java ${JAVA_OPTIONS} com.teradata.platform.core.util.SchemaGenHelper custom_SchemaGen_MetaInfo.xml
