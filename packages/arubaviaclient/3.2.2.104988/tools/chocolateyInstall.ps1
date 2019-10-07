$ErrorActionPreference = 'Stop';
$packageName= 'Aruba Networks Virtual Intranet Access Client'
$Version = "3.2.2.104988"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'MSI'
  url           = "http://h30326.www3.hpe.com/hpn/Aruba-VIA-3.2.2.104988_Win_32.msi?merchantId=ASP_DROPBOX"
  url64bit      = "http://h30326.www3.hpe.com/hpn/Aruba-VIA-3.2.2.104988_Win_64.msi?merchantId=ASP_DROPBOX"
  softwareName  = "Aruba Networks Virtual Intranet Access Client*"
  checksum      = 'E82C1478DC72EB3764384B796C30F7EA551212E567BE92235F0A13AC0D4A7DFF'
  checksumType  = 'sha256'
  checksum64    = '45A0C8FB8D4B5A4D1365D875CB2D3A2B2FB6A52CC57810EE59767A917F49838A'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
  }

Install-ChocolateyPackage @packageArgs