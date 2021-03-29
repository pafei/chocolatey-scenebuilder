# Chocolatey package for Scene Builder

## How to update this chocolatey package

1. Update $url in chocolateyinstall.ps1
2. Update checkusm in the same file `curl $url | sha256sum`
3. Update `version` in `scenebuilder.nuspec`
4. Build pack `choco pack`
5. Test locally `choco install scenebuilder -dv -s .`
6. Push `choco push scenebuilder.16.0.0.nupkg -s https://push.chocolatey.org/`


## Links

* Chocolatey [Quick Start](https://docs.chocolatey.org/en-us/create/create-packages-quick-start)
* Chocolatey Doku [create packages](https://docs.chocolatey.org/en-us/create/create-packages)

