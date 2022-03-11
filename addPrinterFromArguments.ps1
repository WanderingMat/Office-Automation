param (
  [string]$ip,
  [string]$name,
  [string]$driver
)
$printdriver=$universaldriver
$hpdriver="HP Color LaserJet Pro MFP M477 PCL 6"
$kyodriver="Kyocera ECOSYS P2235dn XPS"
$universaldriver="Generic / Text Only"
if($driver="Kyo") {$printdriver=$kyodriver}
elseif($driver="HP") {$printdriver=$hpdriver}
else {$printdriver=$universaldriver}
if (-not(get-printerdriver -Name $kyodriver -erroraction 'silentlycontinue')) {
Add-PrinterDriver -Name $kyodriver
}
if (-not(get-printerdriver -Name $hpdriver -erroraction 'silentlycontinue')) {
Add-PrinterDriver -Name $hpdriver
}
add-printerport -name $ip -printerhostaddress $ip
add-printer -name $name -drivername $printdriver -port $ip
