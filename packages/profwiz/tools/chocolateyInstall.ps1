$ErrorActionPreference = 'Stop';
$packageName= 'Profwiz'
$Version = "3.20"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'MSI'
  url           = "https://www.forensit.com/Downloads/Profwiz.msi"
  softwareName  = "Profwiz*"
  checksum      = 'CCAF23FE56152F75866B1F01B3B9D0DD7D83FB05342BE8D6B9CFE999ADDDBE99'
  checksumType  = 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
  }

Install-ChocolateyPackage @packageArgs