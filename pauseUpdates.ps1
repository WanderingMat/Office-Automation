param (
  [string]$days
)
$key = 'HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings'
$keyValue = 'PauseUpdatesExpiryTime'
$pause = (Get-Date).AddDays($days); 
$pause = $pause.ToUniversalTime().ToString( "yyyy-MM-ddTHH:mm:ssZ" ); 
$pauseDate = Get-ItemProperty -Path $key -Name $keyValue
Set-ItemProperty -Path $key -Name $keyValue -Value $pause 
Write-Host ($pauseDate).$keyValue
