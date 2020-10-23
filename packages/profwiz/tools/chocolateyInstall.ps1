$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.forensit.com/Downloads/Profwiz.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'Profwiz*'
  checksum      = 'CCAF23FE56152F75866B1F01B3B9D0DD7D83FB05342BE8D6B9CFE999ADDDBE99'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs










    








