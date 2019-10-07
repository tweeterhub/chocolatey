$ErrorActionPreference = 'Stop';
$url        = 'https://www.ietab.net/enterprise/ietabhelper.msi'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url
  softwareName  = 'ie tab helper'
  checksum = '2ADE0F6C80D3C74A3A252E2836B64F57FD929DDFAEF13005EBE41250B156A387'
  checksumType  = 'sha256'
  silentArgs    = "/quiet"
  validExitCodes= @(0)
  
}

Install-ChocolateyPackage @packageArgs
