@ECHO OFF
if "%~1"=="" (
	echo "ERROR: number of days is required."
	exit /b
	)
PowerShell.exe -ExecutionPolicy Bypass -Command "& '.\pauseUpdates.ps1'" -days "%~1"