$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/DavidXanatos/wumgr/releases/download/1.0/WuMgr_v1.0.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'wumgr*'
  checksum      = '34C5AE2FAADDDE529C59D478CC0205637FEAABDEFCC4207039C7DB5193CF0CE2'
  checksumType  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs










    








