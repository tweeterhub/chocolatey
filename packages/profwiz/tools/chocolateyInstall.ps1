$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.forensit.com/Downloads/Profwiz.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'Profwiz*'
  checksum      = 'CDAF320C5ABE6896C0BD1221D16FC36902FEB7A4FCB11F620668453BD005C453'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs










    








