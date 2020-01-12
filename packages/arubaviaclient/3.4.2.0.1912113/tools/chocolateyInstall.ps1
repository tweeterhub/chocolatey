$ErrorActionPreference = 'Stop';
$packageName= 'Aruba Networks Virtual Intranet Access Client'
$Version = "3.4.2.0.1912113"
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'MSI'
  url           = "http://h30326.www3.hpe.com/hpn/Aruba-VIA-3.4.2.0.1912113-32.msi?merchantId=ASP_DROPBOX"
  url64bit      = "http://h30326.www3.hpe.com/hpn/Aruba-VIA-3.4.2.0.1912113-64.msi?merchantId=ASP_DROPBOX"
  softwareName  = "Aruba Networks Virtual Intranet Access Client*"
  checksum      = '9F49F7846A446A65ED1DCFE46FFF7BE0CC18BD6E23B8873390A6BCDB171132E3'
  checksumType  = 'sha256'
  checksum64    = '23C045A2C4EA071E5B1C64B23EC1F3052204187E5AADD79550A227AD395381D9'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
  }
  
$ahkExe = 'AutoHotKey'
$ahkFile = Join-Path -Path $toolsDir -ChildPath "install.ahk"
Write-Verbose "Running AutoHotkey install script $ahkFile"
$ahkProc = Start-Process -FilePath $ahkExe -ArgumentList $ahkFile -PassThru
Write-Debug "$ahkExe Start Time:`t$($ahkProc.StartTime.ToShortTimeString())"
Write-Debug "Process ID:`t$($ahkProc.Id)"

Install-ChocolateyPackage @packageArgs