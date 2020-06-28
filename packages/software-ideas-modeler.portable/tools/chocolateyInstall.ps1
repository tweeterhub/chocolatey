$ErrorActionPreference = 'Stop';
$packageName= 'Software Ideas Modeler.portable'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64          = 'https://www.softwareideas.net/Download/File/3145/SoftwareIdeasModeler64-12-71.zip'
    Checksum64     = 'CC0733D265B85F2E059664378AAC03C352162BF54F441C6AD11AD4A1264BF2EC'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs