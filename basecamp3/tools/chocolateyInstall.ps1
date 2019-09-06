$ErrorActionPreference = 'Stop';
$url        = 'https://bc3-desktop.s3.amazonaws.com/windows/basecamp3setup.exe'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'basecamp3'
  checksum = '8b745506051e17ed758bfe7bb97937e45e25eb004b4470285d7b44d3e0abe73a'
  checksumType  = 'sha256'
  silentArgs    = "/S"
  validExitCodes= @(0)
  
}

Install-ChocolateyPackage @packageArgs
