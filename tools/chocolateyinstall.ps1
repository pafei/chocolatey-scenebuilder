$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/gluonhq/scenebuilder/releases/download/19.0.0/SceneBuilder-19.0.0.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  url           = $url

  softwareName  = 'SceneBuilder*'

  checksum      = '3f935b3170a316828e962fb246a92cf80358ef35b9bf54bdf9fcceaff9357b9e'
  checksumType  = 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
