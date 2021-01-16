$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  softwareName   = 'qfinder*'
  fileType       = 'EXE'
  url            = 'https://download.qnap.com/Storage/Utility/QNAPQfinderProWindows-7.4.3.1313.exe'
  checksum       = '8366E9FCF0E9224D40B1E918A84717AC365BC82B2AE54844EFEBC82065F45BC7'
  checksumType   = 'sha256'
  silentArgs     = "/S"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
