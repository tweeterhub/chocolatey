$ErrorActionPreference = 'Stop'
$packageName = 'registryfilevalidator'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64bit       = 'https://windows-repair-toolbox.com/files/Windows_Repair_Toolbox.zip'
    Checksum64     = '004B0CDBCE4855D71195DCB16397A63CAFDD1655BE568D28E4149A5D3C6C2CB6'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs