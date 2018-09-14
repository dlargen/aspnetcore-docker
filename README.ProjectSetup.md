# aspnetcore-docker
Instructions for making this project from scratch.  WORK IN PROGRESS! THIS WILL NOT WORK FOR YOU!  YOU HAVE BEEN WARNED!

```powershell
dotnet new sln -n AccountOwnerServer
dotnet new webapi -n AccountOwnerServer -o .\src\AccountOwnerServer
dotnet sln .\AccountOwnerServer.sln add .\src\AccountOwnerServer\AccountOwnerServer.csproj
```

