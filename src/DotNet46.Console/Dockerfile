FROM microsoft/dotnet-framework:4.6.2

MAINTAINER Naeem Sarfraz "naeem.sarfraz@gmail.com"

LABEL description="A task container that outputs \
the fibonacci series."
      repository="https://github.com/naeemsarfraz/windowscontainers-demo"

ADD bin/Release/DotNet46.Console.exe /DotNet46.Console.exe

ENTRYPOINT DotNet46.Console.exe