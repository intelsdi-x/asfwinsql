DISCONTINUATION OF PROJECT. 

This project will no longer be maintained by Intel.

This project has been identified as having known security escapes.

Intel has ceased development and contributions including, but not limited to, maintenance, bug fixes, new releases, or updates, to this project.  

Intel no longer accepts patches to this project.
DISCONTINUATION OF PROJECT. 

This project will no longer be maintained by Intel.

This project has been identified as having known security escapes.

Intel has ceased development and contributions including, but not limited to, maintenance, bug fixes, new releases, or updates, to this project.  

Intel no longer accepts patches to this project.
##Azure Service Fabric - Guest Container (Docker) template with SQL 2016 based on Windows Server 2016 container

#### Usage
Run powershell publish.ps1 script on ASF host.
```
. PATH
```
i.e.
```
. C:\asf\asfwinsql\publish.ps1
```
or if you are in script directory:
```
. .\publish.ps1
```

#### To enable auto deploy container on ASF template:
```
Just uncomment <DefaultServices> section in ./pkg/Debug/ApplicationManifest.xml
``` 

#### Documentation:

##### Official microsoft docs 

https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-deploy-container
