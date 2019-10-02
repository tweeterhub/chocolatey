
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/DavidXanatos/wumgr/releases/download/0.9a/WuMgr_v0.9a.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'wumgr*'

  checksum      = 'AC604E2A3ED6DB4C4285BD25DB561D19DF4474D81965C12E13454268CC248BB0'
  checksumType  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs










    








