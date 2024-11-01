# Chocolatey package for Scene Builder

## How to update this chocolatey package

1. `choco uninstall scenebuilder` with admin rights
2. Update $url in chocolateyinstall.ps1
3. Update the checkusm in the same file `certutil -hashfile <downloaded msi-file> SHA256`
4. Update `version` in `scenebuilder.nuspec`
6. Build pack `choco pack`
7. Test locally `choco install scenebuilder -dv -s .`
8. Push `choco push --apikey <key> scenebuilder.23.0.1.nupkg -s https://push.chocolatey.org/`

The apikey can be found in the chocolatey account settings.


## Links

* Chocolatey [Quick Start](https://docs.chocolatey.org/en-us/create/create-packages-quick-start)
* Chocolatey Doku [create packages](https://docs.chocolatey.org/en-us/create/create-packages)

