FROM microsoft/aspnet:4.6.2

MAINTAINER Naeem Sarfraz "naeem.sarfraz@gmail.com"

LABEL description="A service container that hosts a vanilla \
Umbraco website."
      repository="https://github.com/naeemsarfraz/windowscontainers-demo" \
	  umbraco-version="7.5.3"

ADD . /CMS

EXPOSE 9999

RUN powershell -Command \
	Remove-Website -Name 'Default Web Site'; \
	New-Website -Name 'CMS.Web' -Port 9999 -PhysicalPath 'c:\CMS' -ApplicationPool '.NET v4.5';

ENTRYPOINT powershell