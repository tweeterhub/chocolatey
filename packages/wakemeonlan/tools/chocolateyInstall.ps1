$ErrorActionPreference = 'Stop';
$packageName= 'WakeMeOnLAN'
$Version = "1.86"
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64          = 'https://www.nirsoft.net/utils/wakemeonlan-x64.zip'
    Checksum64     = '1C8FA56C055E2F570CED5B7B2E2EAAD3E46ECBA03EED61A200D09F21ADB35926'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs