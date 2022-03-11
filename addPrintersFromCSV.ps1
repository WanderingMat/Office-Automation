foreach ($printer in @(Import-Csv \\inserviofs.inservio.local\InservioData\Matt\PrinterList.csv)) {

Add-PrinterPort -Name $printer.IPAddress -PrinterHostAddress $printer.IPAddress -ErrorAction SilentlyContinue

Add-Printer -Name $printer.Printername -DriverName $printer.Driver -PortName $printer.IPAddress -Comment $printer.Comment -Location $printer.Location -ErrorAction SilentlyContinue

}