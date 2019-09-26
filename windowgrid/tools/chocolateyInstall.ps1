$packageName = 'windowgrid'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$tempDir = "$toolsDir\temp"

$packageArgs = @{
    PackageName    = $packageName
    Url64bit       = 'http://windowgrid.net/download/1.3.1.1'
    Checksum64     = 'EF7558B2869A1F74B81E19F1F84C715D95ABCA819920E6882D467323506EA25F'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs