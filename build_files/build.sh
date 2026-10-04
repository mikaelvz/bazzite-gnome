#!/bin/bash

set -ouex pipefail

### Install packages

# Install official Discord package
curl --fail --location 'https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=linux&arch=x64&format=rpm' --output /tmp/discord.rpm
dnf5 --assumeyes install --setopt=install_weak_deps=True /tmp/discord.rpm
rm /tmp/discord.rpm

# Install official VS Code package
curl --fail --location 'https://code.visualstudio.com/sha/download?build=stable&os=linux-rpm-x64' --output /tmp/vscode.rpm
dnf5 --assumeyes install --setopt=install_weak_deps=True /tmp/vscode.rpm
rm /tmp/vscode.rpm