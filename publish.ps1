#How to run this script
#. PATH i.e.
#. C:\asf\asfvnext\publish.ps1
#or if you are in script directory:
#. .\publish.ps1

#changing restriction policy to run unsigned powershell script
Set-ExecutionPolicy Unrestricted
$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
. $dir'\Scripts\Deploy-FabricApplication.ps1' -ApplicationPackagePath $dir'\pkg\Debug' -PublishProfileFile $dir'\PublishProfiles\Local.5Node.xml' -DeployOnly:$false -ApplicationParameter:@{} -UnregisterUnusedApplicationVersionsAfterUpgrade $false -OverrideUpgradeBehavior 'None' -OverwriteBehavior 'SameAppTypeAndVersion' -SkipPackageValidation:$false -ErrorAction Stop

#How to forward port in Windows Server 2016
#netsh interface portproxy add v4tov4 listenaddress=100.100.0.104 listenport=1434 connectaddress=192.168.125.95 connectport=1434
#Check docker container ip:
#1. Check container ID 
#docker -H localhost:2375 ps -a
#2. Check IP
#docker -H localhost:2375 inspect bfba39f601d7 | Select-String -Pattern '"IPAddress": "([1-9]).*"'
