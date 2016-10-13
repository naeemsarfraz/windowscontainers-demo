FROM microsoft/aspnet:4.6.2
LABEL umbraco-version="7.5.3"
ADD . /CMS
EXPOSE 9999
RUN powershell -Command \
	Remove-Website -Name 'Default Web Site'; \
	New-Website -Name 'CMS.Web' -Port 9999 -PhysicalPath 'c:\CMS' -ApplicationPool '.NET v4.5';
ENTRYPOINT powershell