$ErrorActionPreference = 'Stop';
$url        = 'https://www.ietab.net/enterprise/ietabhelper.msi'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url
  softwareName  = 'ie tab helper'
  checksum = '60D17F2BAF38B1F9654E6FF869A5B6CDD732F46F6FCA28DDEE263EC8FAD833C0'
  checksumType  = 'sha256'
  silentArgs    = "/S"
  validExitCodes= @(0)
  
}

Install-ChocolateyPackage @packageArgs
