$ErrorActionPreference = 'Stop';
$packageName= 'Software Ideas Modeler.portable'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64          = 'http://www.pc-tools.net/files/win32/freeware/jbmailplus33.zip'
    Checksum64     = 'A65EA41DB746FF7868BF6486C21473A79A20A375653311ADFEC54FC014D89E58'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs