# Copyright 2006-2017 by Teradata Corporation.
# All Rights Reserved.
# TERADATA CONFIDENTIAL AND TRADE SECRET

#!/bin/sh

echo $(date +%m/%d/%Y-%T)
echo Starting custom_executeIncrGenDB.sh
. ./custom_executeIncrGenDB.sh > ../log/custom_incr_gendb.log 2>&1
