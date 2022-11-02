$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/gluonhq/scenebuilder/releases/download/18.0.0/SceneBuilder-18.0.0.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  url           = $url

  softwareName  = 'SceneBuilder*'

  checksum      = '7330cb29e09f0194722d782dd39d860499a7add90f67fe83cbd188845f2cdbd3'
  checksumType  = 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
