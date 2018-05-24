# Copyright 2006-2017 by Teradata Corporation.
# All Rights Reserved.
# TERADATA CONFIDENTIAL AND TRADE SECRET

#!/bin/sh

# Bat file for setting Environment Variables related to MDM services
# Will be invoked from platform_env.sh file
# Uses variables PLATFORM_LIB_DIR ,PLATFORM_3PLIB_DIR defined in platform_env.sh

MDM_SERVICES_JAR=${PLATFORM_LIB_DIR}/td-mdm-services.jar:loqate.jar:${PLATFORM_LIB_DIR}/td-mdm-upgrade.jar


MDM_SERVICES_CLASSPATH=${MDM_SERVICES_JAR}:../cfg/xservice/toolkit

CLASSPATH=${CLASSPATH}:${MDM_SERVICES_CLASSPATH}
