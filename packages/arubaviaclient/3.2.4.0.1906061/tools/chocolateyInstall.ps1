$ErrorActionPreference = 'Stop';
$packageName= 'Aruba Networks Virtual Intranet Access Client'
$Version = "3.2.4.0.1906061"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'MSI'
  url           = "http://h30326.www3.hpe.com/hpn/Aruba-VIA-3.2.4.0.1906061-32.msi?merchantId=ASP_DROPBOX"
  url64bit      = "http://h30326.www3.hpe.com/hpn/Aruba-VIA-3.2.4.0.1906061-64.msi?merchantId=ASP_DROPBOX"
  softwareName  = "Aruba Networks Virtual Intranet Access Client*"
  checksum      = '28E50CDA556346F49045C98D733F60960D825585E3AF8764F8938E0D00D87C1E'
  checksumType  = 'sha256'
  checksum64    = '3E1CBC238D877C67F026A5B71CE2FE7F3CCABD2E2B35FE6E71F93E39CBDFEBCC'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
  }

Install-ChocolateyPackage @packageArgs