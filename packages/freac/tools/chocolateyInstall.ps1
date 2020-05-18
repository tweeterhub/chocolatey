$packageName    = 'freac'
$packageVersion = '1.0.32'
$url            = 'https://github.com/enzo1982/freac/releases/download/v1.0.32/freac-1.0.32-bin.zip'
$checksum       = 'ad99f5607be71525023f8c3f518bcc92df9b68a1a1b18a69ab44fb488fe76a5b'
$checksumType   = 'sha256'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"


Install-ChocolateyZipPackage -PackageName "$packageName" -UnzipLocation "$toolsDir" -Url "$url" -Checksum "$checksum" -ChecksumType "$checksumType"

Rename-Item "$toolsDir\freac-$packageVersion-bin" "$toolsDir\bin"

$files = get-childitem "$toolsDir" -include *.exe -exclude freac*.exe -recurse
foreach ($file in $files) {
  New-Item "$file.ignore" -type file -force | Out-Null
}
