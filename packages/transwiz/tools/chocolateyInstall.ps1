$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.forensit.com/Downloads/Transwiz.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'Transwiz*'
  checksum      = 'E9AE0FB056EF6E18AB257F1AAC795F08E5900BFBA817ED1EADDB712B09879EE0'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs










    








