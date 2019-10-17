$ErrorActionPreference = 'Stop';
$packageName= 'ToolWiz Time Freeze'
$Version = "4.3.1.5000"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  url64bit      = "http://www.toolwiz.com/downloadfiles/Setup_Timefreeze.exe"
  softwareName  = "ToolWiz Time Freeze*"
  checksum64    = 'D2636E005AA7683BEA4D5375901BAEE06F19B82EED129ED834E94D816C6F20D8'
  checksumType64= 'sha256'
  silentArgs    = "/Sqn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
  }

Install-ChocolateyPackage @packageArgs