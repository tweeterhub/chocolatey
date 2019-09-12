$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://newsletter.neosmart.net/wf/click?upn=oADKZsSomiiZr72Q1doXUM-2FEL4SkvpA6hcaiQOBcVlBm1zALWy1HPBhnRXVuiTzl8AnqID6YZLKytbZd-2FgN6s2oukQX4NIQnICYy4fqMoTaTwl9O92pGrgjjBLNth5CRpWT4iDwByDQNIs9LIWR4oAyo-2Bo8ZNO-2B-2FdK4WXLKFCzg9VvcbfJjhVzhGmr6m81pgytT8qMpWPdHEQfuwVesMKDufLUW79y9MlV3kfvS-2FfRVIG4gP1Z7uHqmbvO6hr23n06zG-2F85mElWJUOG2nEIEzIC8XSToh6Mjl-2BeN2LT0xbdq5S7I9meud9v3xOH6Z8dvvMs3qfFKnajxhyH8Ad-2Fl5gMS4e8EErp1jEV4U2QbbXAOg4ShkQ-2FSV0PUnnpMQYdW_gujZenN5kIwq3KCCCq9ISJuJFa1b0jWoxi-2FhbtGHe4cSM6a6AG0liMuKL96XLG-2B7Ig5IcMOqc-2B4FKvrh0NM4BFmEqUclcR3j81dfCgPH1DGODoa4N5-2FHJcXk0LLUwF3YsRk2yO6vLJLbFjMuaa9n-2F4RQC4P-2BPBpFftUJHusmYY8KnO3xl6fBAYGMk4LDCJaRuxBDGrjVnxuS2YCdNJ3d8pb9pYU8OnYP8DmAVw2YySkav56oV9e-2FYHx2tWjx5U1FdQ3oNRfa3I4zYYiBOe3L-2FdnvPbARz1mQ9G7b371uDhUTdOCVzNKLyzT-2BOByzF4bF1hPF3Dv3VlVYIcaZRTnbMd0V2lQsR5sa5kUn-2BboByJg-3D'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'easybcd'
  checksum = '0A94A43AF2DB7BDBADA87B34BF03D3B221110D1CA21BBEBEC55B08767C1281CC'
  checksumType  = 'sha256'
  silentArgs    = "/S"
  validExitCodes= @(0)
  
}

Install-ChocolateyPackage @packageArgs
