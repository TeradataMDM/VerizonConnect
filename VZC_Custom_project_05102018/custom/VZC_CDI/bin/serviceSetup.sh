# Copyright 2006-2017 by Teradata Corporation. 
# All Rights Reserved. 
# TERADATA CONFIDENTIAL AND TRADE SECRET 

#!/bin/sh
. ./platformEnv.sh

echo $(date +%m/%d/%Y-%T)
echo performing Service Setup
$JAVA_HOME/bin/java ${JAVA_OPTIONS} com.teradata.platform.core.mcore.mdmSpecGen.MdmSpecGen ../cfg/mdm-spec-gen.xml  ../../../cfg/tddb.keywords
