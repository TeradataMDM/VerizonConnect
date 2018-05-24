'USAGE: find_replace.vbs "directory\SOURCE FILENAME" "STRING TO FIND" "STRING TO REPLACE"

Option Explicit

CONST ForReading = 1
CONST ForWriting = 2

Dim strDir
Dim strFileName
Dim strFileToRead
dim strFileToWrite
dim strContent
Dim objFile
DIM objFSO

dim strFind
dim strReplace

'strDir = WScript.Arguments(0)
strFileToRead = WScript.Arguments(0)
strFind = WScript.Arguments(1)
strReplace = WScript.Arguments(2)

'WScript.echo("File to read: " & strFileToRead)

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.OpenTextFile(strFileToRead, ForReading)


strFileName = objFSO.GetFilename(strFileToRead)
strDir = left(strFileToRead,instr(strFileToRead,strFileName)-1)

strFileToWrite = strDir & strFileName

strContent = Replace(objFile.ReadAll,strFind,strReplace)

objFile.Close()
Set objFile = Nothing

Set objFile = objFSO.OpenTextFile(strFileToWrite, ForWriting,1)
objFile.Write strContent

objFile.Close()
Set objFile = Nothing
Set objFSO = Nothing
