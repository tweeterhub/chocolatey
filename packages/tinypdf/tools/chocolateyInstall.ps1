$ErrorActionPreference = 'Stop';
$packageName= 'TinyPDF'
$Version = "3.00.3200"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  url	        = "http://www.tinypdf.com/InstallTinyPDF.exe"
  softwareName  = "TinyPDF*"
  checksum      = '261068B945D44CBE029D2553CACAF4665BC30EF31B321D82A25CD87A71E18F7C'
  checksumType  = 'sha256'
  silentArgs    = "/Sqn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
  }

Install-ChocolateyPackage @packageArgs