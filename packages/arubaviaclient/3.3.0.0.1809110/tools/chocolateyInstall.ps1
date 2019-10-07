$ErrorActionPreference = 'Stop';
$packageName= 'Aruba Networks Virtual Intranet Access Client'
$Version = "3.3.0.0.1809110"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'MSI'
  url           = "http://h30326.www3.hpe.com/hpn/Aruba-VIA-3.3.0.0.1809110_Win_32.msi?merchantId=ASP_DROPBOX"
  url64bit      = "http://h30326.www3.hpe.com/hpn/Aruba-VIA-3.3.0.0.1809110_Win_64.msi?merchantId=ASP_DROPBOX"
  softwareName  = "Aruba Networks Virtual Intranet Access Client*"
  checksum      = 'B2575A6483EDFCC686130947B2AA81C199EC3046D0A0129C3F5AC7B64B1998A0'
  checksumType  = 'sha256'
  checksum64    = '94D875994CC8EBBC0E50308947B13883F6B84D009D1EFE87A763A8D86116DD95'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
  }

Install-ChocolateyPackage @packageArgs