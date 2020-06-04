$ErrorActionPreference = 'Stop'
$packageName = 'registryfilevalidator'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64bit       = 'https://www.videohelp.com/download/gMKVExtractGUI.v2.5.2.7z'
    Checksum64     = '81031962B341AD9FB0E46E9AE8E5B63CEA339DCD1DE5388739DF0AD7BD1A744F'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs