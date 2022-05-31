# Office-Automation
Simple powershell scripts to automate the mundane tasks I encounter at the office

Typically run with an execution batch script to allow script specific execution policy rights (Used by the RMM I run to deploy these scripts).
To use, use the example .bat and change the referenced name to the name of your script.

**Script Details Below**

addPrintersFromArguments.ps1 and .bat:
This script is designed to work with my RMM client, allowing me to pass the IP, name, and optionally the driver to the script to allow bespoke printer installation remotely.
The parameters are specified in the RMM parameters section, which is passed through the .bat to the powershell script.

addPrintersFromCSV.ps1:
Simple script which adds all printers listed on a CSV. SImply match the CSV name to the script, and ensure all variables are represented as their own titled column to use.

certificateInstall.ps1:
Installs the included certificate into the local machines certificate store after performing a check for the certificates thumbprint. Change the thumb print and certificate name where specified to the appropriate values. Certificate directory is set up to work with RMM deployment, can be changed as required.

VPNInstall.ps1: 
Installs a VPN automatically, simply change the listed variables where specified.

removeVPN.ps1:
Removes all VPN connections from the device, Care should be taken using this for some users.

createRestore.ps1:
Creates a restore point with the current date as the name.

pauseUpdates.ps1:
Pauses the updates on the system for however many days are entered.
