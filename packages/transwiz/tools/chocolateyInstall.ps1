$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.forensit.com/Downloads/Transwiz.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'Transwiz*'
  checksum      = '511C2C0908883BC9D05295E5145B767F2633461C93A31D1CB8D765EE09CDD801'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs










    








