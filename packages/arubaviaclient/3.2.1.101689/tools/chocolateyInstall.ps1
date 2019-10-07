$ErrorActionPreference = 'Stop';
$packageName= 'Aruba Networks Virtual Intranet Access Client'
$Version = "3.2.1.101689"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'MSI'
  url           = "http://h30326.www3.hpe.com/hpn/Aruba-VIA-3.2.1.101689_Win_32.msi?merchantId=ASP_DROPBOX"
  url64bit      = "http://h30326.www3.hpe.com/hpn/Aruba-VIA-3.2.1.101689_Win_64.msi?merchantId=ASP_DROPBOX"
  softwareName  = "Aruba Networks Virtual Intranet Access Client*"
  checksum      = 'A0DB9514FF24711CBE733C6545728F402125B403E8D0567A010EF01C1F473F8E'
  checksumType  = 'sha256'
  checksum64    = '09F30CC6CDD3A894818037D53D42BAD21949195453143F7F7392ED9DC6AAC00C'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
  }

Install-ChocolateyPackage @packageArgs