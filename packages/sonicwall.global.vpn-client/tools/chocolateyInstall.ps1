$ErrorActionPreference = 'Stop';
$packageName= 'Sonicwall Global VPN Client'
$Version = "12.71"
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  url           = "https://software.sonicwall.com/GlobalVPNClient/GVCSetup32.exe"
  url64bit      = "https://software.sonicwall.com/GlobalVPNClient/GVCSetup64.exe"
  softwareName  = "Sonicwall Global VPN Client*"
  checksum      = 'B16E3493236A190D6B479CB2114EDC96605A84DA245D889165914FBA4542675B'
  checksumType  = 'sha256'
  checksum64    = '9C2398A05EAB9C3F97AFA68E2D9F2AF8DD5312A770822AD735BA72F1FDDDDF81'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0)
  }

Install-ChocolateyPackage @packageArgs