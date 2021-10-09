$ErrorActionPreference = 'Stop';
$packageName= 'Windows 11 Installation Assistant'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64          = 'https://download.microsoft.com/download/3/a/9/3a9e2fe1-96e7-4514-8744-f3a9731f91c7/Windows11InstallationAssistant.exe'
    Checksum64     = '9D04E6C0EEF448763AD50BF094C8076F4CE6673A83232FB200355F20F77F021A'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs