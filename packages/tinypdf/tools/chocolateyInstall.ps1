$ErrorActionPreference = 'Stop';
$packageName= 'TinyPDF'
$Version = "3.00.3200"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  url64bit      = "http://www.tinypdf.com/InstallTinyPDF.exe"
  softwareName  = "TinyPDF*"
  checksum64    = 'E5F06164301A459955C0BBF37B7F4EF25C70ADD4556B5991A523BF2FCEDB2F63'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
  }

Install-ChocolateyPackage @packageArgs