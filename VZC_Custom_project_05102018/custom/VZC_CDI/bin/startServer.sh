# Copyright 2006-2017 by Teradata Corporation.
# All Rights Reserved.
# TERADATA CONFIDENTIAL AND TRADE SECRET

#!/bin/sh


. ./platformEnv.sh
$JAVA_HOME/bin/java ${JAVA_OPTIONS} com.teradata.platform.core.util.StartPlatformServer startup_config.xml