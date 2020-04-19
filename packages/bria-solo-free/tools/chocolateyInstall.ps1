$ErrorActionPreference = 'Stop';
$packageName= 'Bria'
$Version = "61.10.3104"
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  url           = "https://counterpath.s3.amazonaws.com/downloads/Bria_6.1.0_103104.exe#_ga=2.174367906.1044339977.1585879885-1999752360.1585879885"
  softwareName  = "Bria*"
  checksum      = '9F1B917150FAF49AA9866002542CEF15141A2DBFCB09FB4C7D03BFC926CEF757'
  checksumType  = 'sha256'
  silentArgs    = "--Silent --AcceptEULA=YES"
  validExitCodes= @(0)
  }

Install-ChocolateyPackage @packageArgs