$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.forensit.com/Downloads/Profwiz.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'Profwiz*'
  checksum      = '06A4604E710F0F5B90BC4392617BFC27E8F3691EF3A38352531B3DA7964F115C'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs










    








