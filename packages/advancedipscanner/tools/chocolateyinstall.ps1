$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  url                    = 'https://download.advanced-ip-scanner.com/download/files/Advanced_IP_Scanner_2.5.4594.1.exe'
  checksum               = '26d5748ffe6bd95e3fee6ce184d388a1a681006dc23a0f08d53c083c593c193b'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
