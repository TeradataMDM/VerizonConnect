'***********************************************************************************************************
'SCRIPT:              file_converter.bat 
'DESCRIPTION:         This script replaces strings($???) in input file and saves result to output file
'DEPENDENCY:           
'INPUT:               input file (arg1)
'OUTPUT:              output file (arg2)
'ERRORS:
'SPECIAL INSTRUCTIONS:
'
'CHANGE LOG:
'VERSION              DATE                 AUTHOR                          CHANGES
'1.00                05/08/2018           CA186004                         Created
'***********************************************************************************************************
'Get required environment variables
Set shell = CreateObject("WScript.Shell")
host = shell.ExpandEnvironmentStrings("%HOST%")
user = shell.ExpandEnvironmentStrings("%USER%")
pw = shell.ExpandEnvironmentStrings("%PW%")
env = shell.ExpandEnvironmentStrings("%ENV%")

'Get files to use (passed as parameters)
Set args = WScript.Arguments
inFileName = args.Item(0)
outFileName = args.Item(1)

'Read from input file
Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.OpenTextFile(inFileName, 1)
str = file.ReadAll
file.Close

'Do string replacements using environment variable values
str = Replace(str, "$HOST", host)
str = Replace(str, "$USER", user)
str = Replace(str, "$PW", pw)
str = Replace(str, "$ENV", env)

'Write to output file
Set file = fso.OpenTextFile(outFileName, 2, true)
file.WriteLine str
file.Close