$ErrorActionPreference = 'Stop'
$packageName = 'registryfilevalidator-cli'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64bit       = 'https://forum.xda-developers.com/attachment.php?attachmentid=397962&d=1284040833'
    Checksum64     = 'FC6A2C54B92494B4230943260151107322E6233D9F4759B9884EB7C578AB143D'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs