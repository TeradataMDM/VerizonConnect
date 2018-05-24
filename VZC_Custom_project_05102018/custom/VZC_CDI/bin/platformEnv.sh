# Copyright 2006-2017 by Teradata Corporation.
# All Rights Reserved.
# TERADATA CONFIDENTIAL AND TRADE SECRET

#!/bin/sh

#JAVA_HOME=/opt/jdk1.5

export PATH=${JAVA_HOME}/bin:${PATH}
export SHLIB_PATH=${SHLIB_PATH}
export JAVA_OPTIONS="-Xms512m -Xmx1024m -Dsun.net.inetaddr.ttl=0"

PLATFORM_ROOT=../../..

PLATFORM_LIB_DIR=${PLATFORM_ROOT}/lib

OVERRIDE_DIR=${PLATFORM_ROOT}/lib/override
PLATFORM_CORE_JARS=${PLATFORM_LIB_DIR}/td-platform-server.jar:${PLATFORM_LIB_DIR}/td-platform-util.jar

PLATFORM_CFG=${PLATFORM_ROOT}/cfg/properties:${PLATFORM_ROOT}/cfg

PLATFORM_3PLIB_DIR=${PLATFORM_LIB_DIR}/3plib

MAIL_JAR=${PLATFORM_3PLIB_DIR}/mail.jar:${PLATFORM_3PLIB_DIR}/activation.jar
DB_JAR=${PLATFORM_3PLIB_DIR}/jdbc2_0-stdext.jar:${PLATFORM_ROOT}/lib/terajdbc4.jar:${PLATFORM_ROOT}/lib/tdgssconfig.jar
XML_JAR=${PLATFORM_3PLIB_DIR}/xercesImpl.jar:${PLATFORM_3PLIB_DIR}/xml-apis.jar:${PLATFORM_3PLIB_DIR}/serializer.jar:${PLATFORM_3PLIB_DIR}/xalan.jar:${PLATFORM_3PLIB_DIR}/jdom.jar:${PLATFORM_3PLIB_DIR}/commons-codec-1.10.jar:${PLATFORM_3PLIB_DIR}/commons-httpclient-3.1.jar:${PLATFORM_3PLIB_DIR}/not-yet-commons-ssl.jar:${PLATFORM_3PLIB_DIR}/wsdl4j.jar:${PLATFORM_3PLIB_DIR}/xmlsec.jar:${PLATFORM_3PLIB_DIR}/opensaml.jar:${PLATFORM_3PLIB_DIR}/wss4j.jar:${PLATFORM_3PLIB_DIR}/httpclient.jar:${PLATFORM_3PLIB_DIR}/httpcore.jar:${PLATFORM_3PLIB_DIR}/axiom-api.jar:${PLATFORM_3PLIB_DIR}/httpclient-4.2.5.jar:${PLATFORM_3PLIB_DIR}/httpcore-4.2.4.jar

JCE_JAR=${PLATFORM_3PLIB_DIR}/jcert.jar
POI_JARS=${PLATFORM_3PLIB_DIR}/poi-3.10.1-20140818.jar:${PLATFORM_3PLIB_DIR}/commons-fileupload.jar:${PLATFORM_3PLIB_DIR}/commons-logging.jar:${PLATFORM_3PLIB_DIR}/poi-ooxml-3.10.1-20140818.jar:${PLATFORM_3PLIB_DIR}/poi-ooxml-schemas-3.10.1-20140818.jar:${PLATFORM_3PLIB_DIR}/poi-scratchpad-3.10.1-20140818.jar:${PLATFORM_3PLIB_DIR}/poi-excelant-3.10.1-20140818.jar:${PLATFORM_3PLIB_DIR}/dom4j.jar:${PLATFORM_3PLIB_DIR}/geronimo-stax-api_1.0_spec.jar:${PLATFORM_3PLIB_DIR}/xmlbeans.jar
JMS=${PLATFORM_3PLIB_DIR}/jms.jar
CONNECTION_POOL=${PLATFORM_3PLIB_DIR}/commons-dbcp2-2.1.jar:${PLATFORM_3PLIB_DIR}/commons-pool2-2.3.jar
if test ["$TMP_VAR"==""]
then
	export PLATFORM_ROOT
	export JAVA_HOME
	CLASSPATH=${CONNECTION_POOL}:${OVERRIDE_DIR}:${PLATFORM_CORE_JARS}:${PLATFORM_CFG}:${PLATFORM_LIB_DIR}:${XML_JAR}:${MAIL_JAR}:${DB_JAR}:${JCE_JAR}
	CLASSPATH=${CLASSPATH}:${POI_JARS}:${JAVA_HOME}/lib/tools.jar:${JMS}
	export CLASSPATH
	for A in $(ls *ServicesEnv.sh)
	do
		. ./$A
	done
   	export TMP_VAR=Notempty  #else #export TMP_VAR= "Not empty!"
fi
