$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.forensit.com/Downloads/Support/DefProf.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'Defprof*'
  checksum      = '83E440B791AE26F70B70EA58D9A28DF4D5B77734F616A86DC77E50F455A03CAF'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs










    








