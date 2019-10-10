$ErrorActionPreference = 'Stop';
$url        = 'https://www.microsoft.com/web/handlers/webpi.ashx?command=getinstallerredirect&appid=cors'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'IIS CORS Module'
  checksum = 'C5E398C323FD231DDD906BE375E5D52A25CE8A93BA6B79F1F6633B27849D9951'
  checksumType  = 'sha256'
  silentArgs    = "/S"
  validExitCodes= @(0)
  
}

Install-ChocolateyPackage @packageArgs
