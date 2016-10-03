FROM microsoft/aspnetcore:1.0.1
ENTRYPOINT ["dotnet", "DotNetCore.Web.dll"]
ARG source=.
WORKDIR /app
EXPOSE 80
COPY $source .
