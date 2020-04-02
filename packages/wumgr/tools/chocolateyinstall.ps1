$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/DavidXanatos/wumgr/releases/download/v1.1/WuMgr_v1.1b.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'wumgr*'
  checksum      = '585F10D7D75779B8A74859A9B70A925370F593B239ECF8B8C328ED59C71B276A'
  checksumType  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs










    








