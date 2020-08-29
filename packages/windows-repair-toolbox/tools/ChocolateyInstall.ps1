$ErrorActionPreference = 'Stop'
$packageName = 'windows-repair-toolbox'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64bit       = 'https://windows-repair-toolbox.com/download/click.php?id=Windows_Repair_Toolbox'
    Checksum64     = 'A9BC0CA4240C89C1B195E1ED4714CD89E93110BDBDA6395B9AD5774E95D4CC32'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs