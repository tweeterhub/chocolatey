$ErrorActionPreference = 'Stop';
$packageName= 'Software Ideas Modeler'
$Version = "12.71"
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  url           = "https://www.softwareideas.net/Download/File/3146/SoftwareIdeasModelerSetup32-12-71.exe"
  url64bit      = "https://www.softwareideas.net/Download/File/3146/SoftwareIdeasModelerSetup64-12-71.exe"
  softwareName  = "Software Ideas Modeler*"
  checksum      = 'DF3BE01CA53A9C002C147030677B1F9077DEC79318C0F6C117348AF2DE892514'
  checksumType  = 'sha256'
  checksum64    = 'BC93893F3DD360304597F5D7F8B62C0B8F6C63E3AA6D5B2C065785413D8BCC6D'
  checksumType64= 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  validExitCodes= @(0)
  }

Install-ChocolateyPackage @packageArgs