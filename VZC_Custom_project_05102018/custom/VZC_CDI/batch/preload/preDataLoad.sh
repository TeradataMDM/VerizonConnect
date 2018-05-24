# Copyright 2006-2017 by Teradata Corporation. 
# All Rights Reserved. 
# TERADATA CONFIDENTIAL AND TRADE SECRET 

#! /usr/bin/ksh
# run this file to populate data to your database
echo Setting Env
cur_dir=`pwd`;
cd ../../bin
. ./platformEnv.sh
export CLASSPATH=../batch:$CLASSPATH
    
echo "<!--***********Starting setPreloadConfig ******************-->"
    
${JAVA_HOME}/bin/java com.teradata.platform.core.net.Poster rest ../cfg/properties/xserver.xml MDMServices ../batch/preload/preDataLoad.xml
cd $cur_dir