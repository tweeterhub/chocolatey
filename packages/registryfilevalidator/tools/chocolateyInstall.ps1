$ErrorActionPreference = 'Stop'
$packageName = 'registryfilevalidator'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64bit       = 'https://forum.xda-developers.com/attachment.php?attachmentid=397939&d=1284039287'
    Checksum64     = '5AD7934660E589CD6739204FB461AFCA35496D87ED05D594648EF9540D0AB139'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs