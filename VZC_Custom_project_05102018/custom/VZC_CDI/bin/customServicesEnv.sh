# Copyright 2006-2016 by Teradata Corporation. 
# All Rights Reserved. 
# TERADATA CONFIDENTIAL AND TRADE SECRET 

export CUSTOM_ROOT=..
export CUSTOM_CFG=../cfg:../cfg/properties:../cfg/xservice/VZC_CDI:../cfg/xservice/VZC_CDI/mdm_setup: 

export CLASSPATH=${CUSTOM_CFG}:${CLASSPATH}
