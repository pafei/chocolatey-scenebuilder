$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download2.gluonhq.com/scenebuilder/15.0.1/install/windows/SceneBuilder-15.0.1.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  url           = $url

  softwareName  = 'SceneBuilder*'

  checksum      = '13B55C0832178B7756F0BAAABC4B3BC8B2BC6687C0AD3CA55137256C57FF6A49'
  checksumType  = 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
