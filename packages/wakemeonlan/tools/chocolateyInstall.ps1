$ErrorActionPreference = 'Stop';
$packageName= 'WakeMeOnLAN'
$Version = "1.86"
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'ZIP'
  url           = "https://www.nirsoft.net/utils/wakemeonlan-x64.zip"
  softwareName  = "WakeMeOnLAN*"
  checksum      = '1C8FA56C055E2F570CED5B7B2E2EAAD3E46ECBA03EED61A200D09F21ADB35926'
  checksumType  = 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  validExitCodes= @(0)
  }

Install-ChocolateyPackage @packageArgs