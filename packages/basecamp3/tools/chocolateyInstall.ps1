$ErrorActionPreference = 'Stop';
$url        = 'https://bc3-desktop.s3.amazonaws.com/windows/basecamp3setup.exe'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'basecamp3'
  checksum 		= 'AFAC6D19EB3E0ADF8D395CE7D3C79CBDDA7EE14DB8A160BABFC2B60D935B55C2'
  checksumType  = 'sha256'
  silentArgs    = "/S"
  validExitCodes= @(0)
  
}

Install-ChocolateyPackage @packageArgs
