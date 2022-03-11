# Office-Automation
Simple powershell scripts to automate the mundane tasks I encounter at the office

Typically run with an execution batch script to allow script specific execution policy rights (Used by the RMM I run to deploy these scripts).
To use, use the example .bat and change the referenced name to the name of your script.

addPrintersFromArguments.ps1 and .bat:
This script is designed to work with my RMM client, allowing me to pass the IP, name, and optionally the driver to the script to allow bespoke printer installation remotely.
The parameters are specified in the RMM parameters section, which is passed through the .bat to the powershell script.
