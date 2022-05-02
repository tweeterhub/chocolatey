$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.forensit.com/Downloads/Profwiz.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'Profwiz*'
  checksum      = 'BC2BCF84E3342F85A6E56FA29558525469BF615B1DDF3D0367D7DC6B7160BD0A'
  checksumType  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs