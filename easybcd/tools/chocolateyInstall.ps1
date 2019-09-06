$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://fs2.download82.com/software/bbd8ff9dba17080c0c121804efbd61d5/easybcd/EasyBCD2.4.exe'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'easybcd'
  checksum = '0A94A43AF2DB7BDBADA87B34BF03D3B221110D1CA21BBEBEC55B08767C1281CC'
  checksumType  = 'sha256'
  silentArgs    = "/S"
  validExitCodes= @(0)
  
}

Install-ChocolateyPackage @packageArgs
