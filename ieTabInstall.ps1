$url = "https://www.ietab.net/enterprise/ietabhelper.msi"
$chromeurl = "http://dl.google.com/chrome/install/375.126/chrome_installer.exe"
$tempdir = "c:\temp-inservio"
$dest = $tempdir + "\ietabhelper.msi"
$chromeinstaller = $tempdir + "\chrome_installer.exe"
$registryPath = "HKLM:\\Software\Policies\Google\Chrome\ExtensionInstallForcelist\"
$test = test-path -path $registryPath
$chrometest = (Get-Package -Name "Google Chrome" -ErrorAction silentlycontinue)
Import-Module BitsTransfer
if ((Test-Path $tempdir) -eq $false )
{
New-Item -ItemType 'directory' $tempdir
}
if(-not($chrometest)){
Start-BitsTransfer -Source $chromeurl -Destination $tempdir
Get-BitsTransfer | Complete-BitsTransfer
Start-Process -FilePath $chromeinstaller -Args "/silent /install" -Verb RunAs -Wait;
}
else{Write-Host "Chrome is already installed"}
if(-not($test)){
New-Item -Path $registryPath
Write-Host "Registery created"
}
Set-ItemProperty -Path $registryPath -Name '1' -Value 'hehijbfgiekmjfkfjpbkbammjbdenadd;https://clients2.google.com/service/update2/crx' -Type String
Write-Host "Value added to Registery"
Start-BitsTransfer -Source $url -Destination $tempdir
Get-BitsTransfer | Complete-BitsTransfer
Start-Process $dest -ArgumentList "/quiet" -Wait
Remove-Item $tempdir -Recurse
if($test){Write-Host "Extension installed"}


