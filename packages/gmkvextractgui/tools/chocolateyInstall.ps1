$ErrorActionPreference = 'Stop'
$packageName = 'registryfilevalidator'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url32bit       = 'https://sourceforge.net/projects/gmkvextractgui/files/latest/download'
    Checksum32     = '507246122C1256B3D3086DEC9AF8D059D77F56A35A409BC16CADD9DEF54BBD24'
    ChecksumType32 = 'sha256'
    Url64bit       = 'https://sourceforge.net/projects/gmkvextractgui/files/latest/download'
    Checksum64     = '507246122C1256B3D3086DEC9AF8D059D77F56A35A409BC16CADD9DEF54BBD24'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs