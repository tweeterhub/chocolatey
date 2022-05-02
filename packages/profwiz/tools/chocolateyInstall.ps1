$ErrorActionPreference = 'Stop';
$packageName= 'Profwiz'
$Version = "3.24"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'MSI'
  url           = "https://www.forensit.com/Downloads/Profwiz.msi"
  softwareName  = "Profwiz*"
  checksum      = 'BC2BCF84E3342F85A6E56FA29558525469BF615B1DDF3D0367D7DC6B7160BD0A'
  checksumType  = 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
  }

Install-ChocolateyPackage @packageArgs