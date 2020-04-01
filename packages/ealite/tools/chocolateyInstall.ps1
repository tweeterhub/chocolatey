$ErrorActionPreference = 'Stop';
$url        = 'https://www.sparxsystems.com/bin/easetup.msi'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url
  softwareName  = 'Enterprise Architect*'
  checksum      = '72B9DBD2A47BD3EC5EDAB40A1F302A0EE10A4333534EA3C05E136D1BF9DB86B5'
  checksumType  = 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
