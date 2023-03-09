ECHO OFF
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%Your Auto Start Up Powershell Location%'" >> "%Your Auto Start Up Batch Log File Location%" 2>&1

EXIT