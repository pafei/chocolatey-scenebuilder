# Chocolatey package for Scene Builder

## How to update this chocolatey package

1. `choco uninstall scenebuilder` with admin rights
2. Update $url in chocolateyinstall.ps1
3. Update checkusm in the same file `curl $url | sha256sum`
4. Update `version` in `scenebuilder.nuspec`
5. Delete old .nupkg file: `git rm scenebuilder.17.0.0.nupkg`
6. Build pack `choco pack`
7. Test locally `choco install scenebuilder -dv -s .`
8. Push `choco push scenebuilder.18.0.0.nupkg -s https://push.chocolatey.org/`


## Links

* Chocolatey [Quick Start](https://docs.chocolatey.org/en-us/create/create-packages-quick-start)
* Chocolatey Doku [create packages](https://docs.chocolatey.org/en-us/create/create-packages)

