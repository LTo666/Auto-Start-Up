Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

[String[]] $paths = "%Your 1st Project Folder Location%", "%Your 2nd Project Folder Location%"
[string] $startUpLogFilePath = "%Your Start Up Powershell Log File Location%"

[string] $processStartText = "Auto Start Up Powershell Script: Start"
[string] $processEndText = "Auto Start Up Powershell Script: End"

function OpenProject { 
  param ( [string] $location )
  Set-Location -Path $location
  Invoke-Expression "& code ."
}

function WriteLog {
  param (
    [Parameter(Mandatory = $true)] [string] $message
    [Parameter(Mandatory = $true)] [string] $logFilePath,
  )
  [string] $timeStamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
  [string] $logMessage = "[$timeStamp] $message`n"
  Add-Content $logFilePath $logMessage
}

WriteLog -message $processStartText -logFilePath $startUpLogFilePath

Foreach ($path in $paths) { 
  [string] $processText = "Open VS Code with location '$path'"
  WriteLog -message $processText -logFilePath $startUpLogFilePath
  OpenProject -location $path
}

WriteLog -message $processEndText -logFilePath $startUpLogFilePath
  
Exit