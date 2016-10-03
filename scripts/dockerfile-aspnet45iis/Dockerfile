FROM microsoft/iis

RUN powershell -Command \
	$ErrorActionPreference = 'Stop'; \
	Install-WindowsFeature NET-Framework-45-ASPNET; \
	Install-WindowsFeature Web-Asp-Net45
