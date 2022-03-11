@ECHO OFF
if "%~1"=="" (
	echo "ERROR: IP address is required."
	exit /b
	)

if "%~2"=="" (
	echo "ERROR: Printer name is required."
	exit /b
	)
PowerShell.exe -ExecutionPolicy Bypass -Command "& '.\Add_Printer.ps1'" -Ip "%~1" -Name "%~2" -Driver "%~3"