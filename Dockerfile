FROM debian:trixie-slim

# Install necessary dependencies
RUN apt-get update && apt-get install -y wget unzip git curl jq

# install ast-grep
RUN wget -qO ast-grep.zip https://github.com/ast-grep/ast-grep/releases/download/0.39.6/app-x86_64-unknown-linux-gnu.zip
RUN unzip ast-grep.zip && mv ast-grep /usr/local/bin/ast-grep

# Setup work directory 
RUN mkdir -p /app
WORKDIR /app
