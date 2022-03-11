if (Get-ChildItem -Path Cert:\LocalMachine\Root | Where-Object {$_.Thumbprint -eq "Enter Thumbprint here"})

{

Write-Host "Already Installed"

}

else

{

Import-Certificate -FilePath ".\Certificate Name" -CertStoreLocation Cert:\LocalMachine\Root -verbose

}