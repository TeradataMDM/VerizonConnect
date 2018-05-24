# Copyright 2006-2017 by Teradata Corporation. 
# All Rights Reserved. 
# TERADATA CONFIDENTIAL AND TRADE SECRET 

#!/bin/sh
. ./platformEnv.sh
${JAVA_HOME}/bin/java com.teradata.platform.core.net.Poster REST xserver.xml PLATFORM shutdown.xml