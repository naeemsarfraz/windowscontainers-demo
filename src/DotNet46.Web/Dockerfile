FROM microsoft/aspnet:4.6.2

MAINTAINER Naeem Sarfraz "naeem.sarfraz@gmail.com"

LABEL description="A service container that hosts a vanilla \
ASP.NET MVC 5 website."
      repository="https://github.com/naeemsarfraz/windowscontainers-demo"

ADD . /App

EXPOSE 9999

RUN powershell -Command \
	Remove-Website -Name 'Default Web Site'; \
	New-Website -Name 'Demo 2' -Port 9999 -PhysicalPath 'c:\App' -ApplicationPool '.NET v4.5';

ENTRYPOINT powershell