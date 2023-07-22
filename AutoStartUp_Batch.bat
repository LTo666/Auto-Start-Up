ECHO OFF

set psLoc=D:\YOUR_POWHERSHELL_FILE_FOLDER\AutoStartUp_Powershell.ps1
set configLoc=D:\YOUR_CONFIGURE_FILE_FOLDER\AutoStartUp_Configure.txt
set psLogLoc=D:\YOUR_POWHERSHELL_LOG_FILE_FOLDER\PowerShell_Log.txt
set batLogLoc=D:\YOUR_BATCH_ERROR_LOG_FILE_FOLDER\Batch_Error_Log.txt

PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%psLoc%' '%psLogLoc%' '%configLoc%'" >> "%batLogLoc%" 2>&1

EXIT