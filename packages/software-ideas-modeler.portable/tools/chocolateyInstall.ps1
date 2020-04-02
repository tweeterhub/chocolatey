$ErrorActionPreference = 'Stop';
$packageName= 'Software Ideas Modeler.portable'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64          = 'https://www.softwareideas.net/Download/File/2030/SoftwareIdeasModeler64-12-47.zip'
    Checksum64     = 'E60F3650D5BC62DA847F1D13652766C9DE46C1E3DE6B6E699D463742EAC1DEFA'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs