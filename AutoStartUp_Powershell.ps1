param (
  [string]$startUpLogFilePath,
  [string]$configFilePath
)

Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

$configFile = Get-Content $configFilePath

[string] $processStartText = "Auto Start Up Powershell Script: Start"
[string] $processEndText = "Auto Start Up Powershell Script: End"

function OpenProject { 
  param ( [string] $location )
  Set-Location -Path $location
  Invoke-Expression "& code ."
}

function WriteLog {
  param (
    [Parameter(Mandatory = $true)] [string] $message,
    [Parameter(Mandatory = $true)] [string] $logFilePath
  )
  [string] $timeStamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
  [string] $logMessage = "[$timeStamp] $message`n"
  Add-Content $logFilePath $logMessage
}

WriteLog -message $processStartText -logFilePath $startUpLogFilePath

Foreach ($line in $configFile) { 
  [string] $processText = "Open VS Code with location '$line'"
  WriteLog -message $processText -logFilePath $startUpLogFilePath
  OpenProject -location $line
}

WriteLog -message $processEndText -logFilePath $startUpLogFilePath
  
Exit