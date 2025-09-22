FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build

WORKDIR /nodetunnel
COPY . .
RUN dotnet build --configuration Release

FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS runtime

WORKDIR /nodetunnel
COPY --from=build /nodetunnel/bin/Release/net9.0/* .

EXPOSE 9999/udp
EXPOSE 9998

ENTRYPOINT ["./NodeTunnel"]
