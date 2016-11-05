# Base of your container
FROM microsoft/dotnet:1.0.0-preview2.1-sdk

RUN apt-get update
RUN apt-get install -y apt-utils mono-complete curl