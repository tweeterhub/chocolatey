$ErrorActionPreference = 'Stop';
$packageName= 'Software Ideas Modeler.portable'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url            = 'https://www.softwareideas.net/Download/File/2030/SoftwareIdeasModeler32-12-47.zip'
    Url64          = 'https://www.softwareideas.net/Download/File/2030/SoftwareIdeasModeler64-12-47.zip'
    Checksum       = '7D719A138743C280847F54F31A5D4A5FBB459D42EB03C189D1EFD21EA213AE08'
    Checksum64     = 'E60F3650D5BC62DA847F1D13652766C9DE46C1E3DE6B6E699D463742EAC1DEFA'
    ChecksumType   = 'sha256'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs