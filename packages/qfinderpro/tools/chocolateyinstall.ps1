$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  softwareName   = 'qfinder*'
  fileType       = 'EXE'
  url            = 'https://download.qnap.com/Storage/Utility/QNAPQfinderProWindows-7.4.2.1117.exe'
  checksum       = '819938D98D3258BAFF31B6CFC6292725EFA5951794298EDBD0FCCE4AF5A1292D'
  checksumType   = 'sha256'
  silentArgs     = "/S"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
