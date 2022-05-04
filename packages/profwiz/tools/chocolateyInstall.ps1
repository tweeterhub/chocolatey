$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.forensit.com/Downloads/Profwiz.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'Profwiz*'
  checksum      = '3F49A09D6B1CBBA079D928E5BC7D2F716F57AC150540E0CF37E4B4517310B988'
  checksumType  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs