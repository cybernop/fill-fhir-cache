FROM ubuntu:22.04

RUN apt update
RUN apt install -y ca-certificates dotnet-sdk-6.0 nodejs npm
RUN dotnet tool install -g firely.terminal
RUN npm add -g fsh-sushi

WORKDIR /root
COPY entrypoint.sh .
ENTRYPOINT [ "./entrypoint.sh" ]