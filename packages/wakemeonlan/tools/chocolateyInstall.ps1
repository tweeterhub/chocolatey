$ErrorActionPreference = 'Stop';
$packageName= 'Software Ideas Viewer'
$Version = "12.47"
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  url           = "https://www.softwareideas.net/Download/File/2037/SoftwareIdeasViewerSetup32-12-47.exe"
  softwareName  = "Software Ideas Viewer*"
  checksum      = '3CC621BEA105756B3296F2A64320AE9D03BA54D61C7C6117B09A947819EA5194'
  checksumType  = 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  validExitCodes= @(0)
  }

Install-ChocolateyPackage @packageArgs