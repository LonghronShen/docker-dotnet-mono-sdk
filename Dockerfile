# Base of your container
FROM microsoft/dotnet:1.0.0-preview2.1-sdk

RUN echo "deb http://download.mono-project.com/repo/debian alpha main" | tee /etc/apt/sources.list.d/mono-xamarin-alpha.list

RUN apt-get update
RUN apt-get install -y apt-utils mono-complete referenceassemblies-pcl ca-certificates-mono curl