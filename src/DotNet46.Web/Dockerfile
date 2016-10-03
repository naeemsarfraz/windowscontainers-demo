FROM microsoft/aspnet:4.6.2
ADD ./../../DotNet46.Web-Published/. /App
EXPOSE 9999
RUN powershell -Command New-Website -Name 'DDDNorth 2015' -Port 9999 -PhysicalPath 'c:\App' -ApplicationPool '.NET v4.5'
ENTRYPOINT powershell