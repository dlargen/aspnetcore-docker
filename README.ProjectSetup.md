# aspnetcore-docker
WORK IN PROGRESS! THIS WILL NOT WORK FOR YOU!  YOU HAVE BEEN WARNED!
Following this series: https://code-maze.com/net-core-series/

This outlines steps I followed mixed wth the steps from the guide.  Mostly shows the differences I had to do using VS Code instead of VS. 

1. Part 2: https://code-maze.com/net-core-web-development-part2/
	1. Create WebAPI Project and SLN
		```powershell
		dotnet new sln -n AccountOwnerServer
		dotnet new webapi -n AccountOwnerServer -o .\src\AccountOwnerServer
		dotnet sln .\AccountOwnerServer.sln add .\src\AccountOwnerServer\AccountOwnerServer.csproj
		```
	1. Edit the launchSettings.json file. Change the applicationUrl property and the launchBrowser property to false, to prevent web browser to start when the project starts.
	1. Verify it runs locally
		1. ```powershell
		dotnet run --project .\src\AccountOwnerServer\AccountOwnerServer.csproj
		```
		1. Browse to https://localhost:5001/api/values
		1. Response
		```json
		["value1","value2"]
		```
1. Part 3: https://code-maze.com/net-core-web-development-part3/
	1. Create Contracts Class Library (.NET Core)
		```powershell
		dotnet new classlib -f netcoreapp2.1 -n Contracts -o .\src\Contracts
		dotnet sln .\AccountOwnerServer.sln add .\src\Contracts\Contracts.csproj
		```
	1. Create Contracts Class Library (.NET Core)
		```powershell
		dotnet new classlib -f netcoreapp2.1 -n LoggerService -o .\src\LoggerService
		dotnet sln .\AccountOwnerServer.sln add .\src\LoggerService\LoggerService.csproj
		```
	1. Reference the new services in the main AccountOwnerServer project.
		```powershell
		dotnet add .\src\AccountOwnerServer\AccountOwnerServer.csproj reference .\src\Contracts\Contracts.csproj
		dotnet add .\src\AccountOwnerServer\AccountOwnerServer.csproj reference .\src\LoggerService\LoggerService.csproj
		```
	1. Reference the Contracts service inside the LoggerService
		```powershell
		dotnet add .\src\LoggerService\LoggerService.csproj reference .\src\Contracts\Contracts.csproj
		```
	1. From the command Pallente Ctrl+Shift+P use NugetPackage Manager: Add Package to add the following
		1. NLog.Extensions.Logging 
