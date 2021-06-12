$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  url                    = 'https://download.advanced-ip-scanner.com/download/files/Advanced_IP_Scanner_2.5.3850.exe'
  checksum               = '87BFB05057F215659CC801750118900145F8A22FA93AC4C6E1BFD81AA98B0A55'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs