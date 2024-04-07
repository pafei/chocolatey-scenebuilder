$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
    $url        = 'https://github.com/gluonhq/scenebuilder/releases/download/22.0.0/SceneBuilder-22.0.0.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  url           = $url

  softwareName  = 'SceneBuilder*'

  checksum      = 'e118ed7180a51f5b00eab04b6172ca84c0a6e44c3253b4b74d8e2937321ee19c'
  checksumType  = 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
