FROM microsoft/aspnet:4.6.2

MAINTAINER Naeem Sarfraz "naeem.sarfraz@gmail.com"

LABEL description="A service container that hosts a vanilla \
ASP.NET MVC 5 website." \
      repository="https://github.com/naeemsarfraz/windowscontainers-demo"

ADD . /App

RUN powershell -Command \
	Remove-Website -Name 'Default Web Site'; \
	New-Website -Name 'Demo2' -Port 9999 -PhysicalPath 'c:\App' -ApplicationPool '.NET v4.5';

EXPOSE 9999

ADD https://raw.githubusercontent.com/naeemsarfraz/iis-log-watcher/master/IISLogWatcher.ps1 /watch.ps1

ENTRYPOINT powershell