# Copyright 2006-2016 by Teradata Corporation. 
# All Rights Reserved. 
# TERADATA CONFIDENTIAL AND TRADE SECRET 

#!/usr/bin/ksh

. ./platformEnv.sh

chmod 777 *.*

echo starting Locator and MDM Server
. ./startServer.sh &
${JAVA_HOME}/bin/java com.teradata.platform.core.util.SocketPoller localhost xserver.xml
sleep 15

for i in ../rolledupData/*.xml  do

${JAVA_HOME}/bin/java -Xms256m -Xmx1024m com.teradata.bcm.xcore.util.PosterUtil xserver localhost xserver.xml $i

done

echo import of rolled up data complete