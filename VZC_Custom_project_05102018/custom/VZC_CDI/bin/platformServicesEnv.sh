# Copyright 2006-2017 by Teradata Corporation.
# All Rights Reserved.
# TERADATA CONFIDENTIAL AND TRADE SECRET

#!/bin/sh

# Bat file for setting Environment Variables related to Platform services
# Will be invoked from platform_env.sh file
# Uses variables PLATFORM_LIB_DIR ,PLATFORM_3PLIB_DIR defined in platform_env.sh

PLATFORM_SERVICES_JAR=${PLATFORM_LIB_DIR}/td-platform-services.jar

QUARTZ=${PLATFORM_3PLIB_DIR}/quartz-2.2.1.jar:${PLATFORM_3PLIB_DIR}/quartz-jobs-2.2.1.jar:${PLATFORM_3PLIB_DIR}/slf4j-api-1.7.7.jar:${PLATFORM_3PLIB_DIR}/slf4j-log4j12-1.7.7.jar:${PLATFORM_3PLIB_DIR}/log4j.jar:${PLATFORM_3PLIB_DIR}/gson-2.2.4.jar:${PLATFORM_3PLIB_DIR}/jaxen-1.1.3.jar

PLATFORM_SERVICES_CLASSPATH=${PLATFORM_SERVICES_JAR}:${QUARTZ}

CLASSPATH=${CLASSPATH}:${PLATFORM_SERVICES_CLASSPATH}
