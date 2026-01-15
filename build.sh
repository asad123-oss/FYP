#!/bin/bash

# .NET 8 SDK install karne ke liye
curl -sSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin --channel 8.0

# Path set karne ke liye
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$HOME/.dotnet

# Project publish karne ke liye
# 'YourProjectName.csproj' ko apne file name se badal dein
dotnet publish *.csproj -c Release -o output