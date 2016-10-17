# Windows Containers Demo

## Pre-requisites
* Windows 10 Professional or Enterprise, Anniversary Update
* Visual Studio 2015
* [Visual Studio Tools for Docker](https://visualstudiogallery.msdn.microsoft.com/0f5b2caa-ea00-41c8-b8a2-058c7da0b3e4)
* [Docker for Windows](https://docs.docker.com/docker-for-windows/)

Open the [solution](https://github.com/naeemsarfraz/windowscontainers-demo/blob/master/WindowsContainers.Demo.sln) in Visual Studio.

## Demo 1 - An ASP.NET Core app running in a Linux container
1. Right-click the DotNetCore.Web project, located in the Demo 1 folder, and select Set as StartUp Project
2. Ensure Docker is selected in the Debug option (list next to Solutions Platforms) and hit F5
3. Eventually the app should launch in a browser, try the following
    * Set a breakpoint and refresh to see it hit
    * Edit a view and refresh to see the update, no need to stop debugging  

## Demo 2 - An ASP.NET MVC 5 app running in a Windows container 
1. Right-click and Publish the DotNet46.Web project, choose the Local profile
2. Open a command prompt in the solution directory and build your docker image `docker build -t demo2 .\DotNet46.Web-Published\.`
3. Run `docker images` to verify you have a new image demo2 (tag=latest)
4. Run `docker run --rm -p 80:9999 --name demo2 demo2` and navigate to http://(container ip):9999* to see the app
    * *Run `docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" demo2` to get the container ip address

## Demo 3 - A .NET Console app running in a Windows container
2. Open a command prompt in the solution directory and build your docker image `docker build -t demo3 .\src\DotNet46.Console\.`
3. Run `docker images` to verify you have a new image demo3 (tag=latest)
4. Run `docker run --rm demo3` and wait for the first 15 numbers of the Fibonacci series to be printed out
4. Try `docker run -e FIBONACCI_N=5 --rm demo3` to print only the first 5