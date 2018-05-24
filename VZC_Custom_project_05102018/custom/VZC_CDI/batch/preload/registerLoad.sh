# Copyright 2006-2017 by Teradata Corporation. 
# All Rights Reserved. 
# TERADATA CONFIDENTIAL AND TRADE SECRET 

#! /usr/bin/ksh
# run this file to register load in your database
echo Setting Env
export HOME_ST=`pwd`
cd ../../bin

. ./platformEnv.sh
export CLASSPATH=../batch:$CLASSPATH
    
echo "<!--***********Starting RegisterLoad.xml ******************-->"

#NOTE : ur Registerload.xml should be in the <build_home>/bin dir for this script to execute

${JAVA_HOME}/bin/java com.teradata.platform.core.net.Poster rest ../cfg/properties/xserver.xml MDMServices ../batch/preload/registerLoad.xml

cd $HOME_ST/
