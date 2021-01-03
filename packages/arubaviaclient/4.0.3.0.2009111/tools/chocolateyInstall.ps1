$ErrorActionPreference = 'Stop';
$packageName= 'Aruba Networks Virtual Intranet Access Client'
$Version = "3.4.2.0.1912113"
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'MSI'
  url64bit      = "http://h30326.www3.hpe.com/hpn/Aruba-VIA-4.0.0.0.2004212-64.msi?merchantId=ASP_DROPBOX"
  softwareName  = "Aruba Networks Virtual Intranet Access Client*"
  checksum64    = 'F3E3402C886A4EABF5270DA62BD4F457FA68224EE0C40FBB3232F72B75414608'
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