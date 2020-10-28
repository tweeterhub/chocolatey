$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  url                    = 'https://media.kingston.com/support/downloads/KSM_setup_1.1.2.6.exe'
  checksum               = '21110878E93FD7A15EFD3667103BDED7E67EB87AC83DBEB55464CCDC5C0442F1'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
