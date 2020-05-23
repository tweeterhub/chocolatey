$ErrorActionPreference = 'Stop';
$packageName= 'Software Ideas Modeler.portable'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64          = 'https://github.com/enzo1982/freac/releases/download/v1.1.1/freac-1.1.1-windows-x64.zip'
    Checksum64     = 'A75DDF709B9DE87A411D2F1106F90CE5F28F61AC89C0AE9076140D35623B8218'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs