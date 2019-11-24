$ErrorActionPreference = 'Stop'
$packageName = 'windows-repair-toolbox'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64bit       = 'https://windows-repair-toolbox.com/download/click.php?id=Windows_Repair_Toolbox'
    Checksum64     = '3833AEED99F3B6DD4EF3C0B16AF60B3BAB08B841CD1E50EA1EA7A4F4D56410C6'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs