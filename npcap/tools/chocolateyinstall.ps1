$ErrorActionPreference = 'Stop';
$url        = 'https://nmap.org/npcap/dist/npcap-0.9983.exe'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'npcap*'
  checksum = '8F9DF254D9F93866EA89EC48F58A6698777D39D6506C780EEB1C30795B898C07'
  checksumType  = 'sha256'
  silentArgs    = "/loopback_support:yes /admin_only:yes /dot11_support:yes /winpcap:yes /S"
  validExitCodes= @(0)
  
}

Install-ChocolateyPackage @packageArgs