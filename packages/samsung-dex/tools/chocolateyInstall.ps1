$ErrorActionPreference = 'Stop';
$packageName= 'Samsung DeX'
$Version = "1.0.0.71"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  url           = "https://www.samsung.com/global/download/SamsungDeXWin"
  softwareName  = "Samsung DeX*"
  checksum      = 'F709EABC7C64A4B58B27A1044EBC1BE42F0C34A90903A8B1235C07E006F4D4B4'
  checksumType  = 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
  }

Install-ChocolateyPackage @packageArgs