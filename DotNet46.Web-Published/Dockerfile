FROM microsoft/aspnet:4.6.2
ADD . /App
EXPOSE 9999
RUN powershell -Command \
	Remove-Website -Name 'Default Web Site'; \
	New-Website -Name 'Demo 2' -Port 9999 -PhysicalPath 'c:\App' -ApplicationPool '.NET v4.5';
ENTRYPOINT powershell