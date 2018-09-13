# aspnetcore-docker
Fun project for learning asp.net core built for containers.

1. Install .NET Core SDK 2.1 Currently: https://www.microsoft.com/net/download/thank-you/dotnet-sdk-2.1.402-windows-x64-installer
1. Configure Powershell to allow script execution:
	1. set-executionpolicy remotesigned
	1. get-executionpolicy
1. Visual Studio Code Setup (Or your editor flavor of choice)
	1. Extensions:
		1. Powershell
		1. C#
		1. Docker (Installed with Code)
1. Clone this REPO in Visual Studio Code
1. Create a container to build the .netcore application and optionally run a local test of the app.  Can be skipped because we will be running the application in a container.
	1. .\scripts\build.ci.ps1
	1. Test (Optional)
		1. dotnet run --project .\src\webui\webui.csproj
		1. Navigate to http://localhost:5000
		1. Ctrl - C
1. Create a container to run your webui and a container to run the db
	1. .\scripts\build.ps1
1. Run the webui container and the db container
	1. .\scripts\run.ps1
1. Test your container application
	1. Navigate to http://localhost:5000
		
