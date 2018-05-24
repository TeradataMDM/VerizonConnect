::***********************************************************************************************************
::SCRIPT:              Setup_Env_variable.bat 
::DESCRIPTION:         This will setup global variables
::DEPENDENCY:           
::INPUT:                
::OUTPUT:              
::ERRORS:
::SPECIAL INSTRUCTIONS:
::
::CHANGE LOG:
::VERSION              DATE                 AUTHOR                          CHANGES
::1.00                05/08/2018           CA186004                        CREATED
::***********************************************************************************************************/


SET ROOTDIR=E:\Teradata\MDM\MDM4.1.0\custom\VZC_CDI\batch\CRDM\scripts
SET SCRIPTDIR=%ROOTDIR%\bat\
SET BTEQDIR=%ROOTDIR%\bteq\
SET LOGDIR=%ROOTDIR%\log\
SET ERRORDIR=%ROOTDIR%\Error_Dir\
SET TDHOST=10.25.132.9
SET USERNAME=MDM41
SET PASSWD=MDM41
SET MDMDB=MDM41_MST
SET MDMVIEW=MDM41
SET MDMSTAGE=MDM41_STG
SET MDMCRDM=MDM41_CRDM

