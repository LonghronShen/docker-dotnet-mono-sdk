# Base of your container
FROM microsoft/dotnet:1.0.0-preview2.1-sdk

RUN echo "deb http://download.mono-project.com/repo/debian alpha main" | tee /etc/apt/sources.list.d/mono-xamarin-alpha.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF

RUN apt-get update
RUN apt-get install -y apt-utils mono-complete curl

RUN mozroots --import --sync
RUN yes | certmgr -ssl -m https://go.microsoft.com
RUN yes | certmgr -ssl -m https://nugetgallery.blob.core.windows.net
RUN yes | certmgr -ssl -m https://nuget.org