$ErrorActionPreference = 'Stop';

$packageName= '{{PackageName}}'
$url        = '{{DownloadUrl}}'
$url64      = '{{DownloadUrlx64}}'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Software Ideas Modeler*'

  checksum      = '{{Checksum}}'
  checksumType  = 'sha256'
  checksum64    = '{{Checksumx64}}'
  checksumType64= 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
