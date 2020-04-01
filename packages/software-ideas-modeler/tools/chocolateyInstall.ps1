$ErrorActionPreference = 'Stop';
$packageName= 'Software Ideas Modeler'
$Version = "12.47"
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  url           = "https://www.softwareideas.net/Download/File/2032/SoftwareIdeasModelerSetup32-12-47.exe"
  url64bit      = "https://www.softwareideas.net/Download/File/2033/SoftwareIdeasModelerSetup64-12-47.exe"
  softwareName  = "Software Ideas Modeler*"
  checksum      = '1760152CB0C48C47DF475DD89EB89A77AECE6FE0EFBF5DC8779EC98B54BC6647'
  checksumType  = 'sha256'
  checksum64    = '54EDEDE275E559E7BD897579216AC39D33253B4DF832D422A36C4AC3A601E740'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
  }

Install-ChocolateyPackage @packageArgs