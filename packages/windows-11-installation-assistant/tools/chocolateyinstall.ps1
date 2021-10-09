$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.microsoft.com/download/3/a/9/3a9e2fe1-96e7-4514-8744-f3a9731f91c7/Windows11InstallationAssistant.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'ZIP'
  url           = $url
  softwareName  = 'Windows 11*'
  checksum      = '9D04E6C0EEF448763AD50BF094C8076F4CE6673A83232FB200355F20F77F021A'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs