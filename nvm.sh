#!/bin/bash

# Exit if a $? != 0.
set -e

log() {
  echo ">>>>>> $1"
}

# Install nvm
if [ -d "$HOME/.nvm" ]; then
  log "NVM is already installed. Skipping installation."
else
  log "Installing NVM"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
fi

# zshrc
export NVM_DIR="$HOME/.nvm"
if [ -s "$NVM_DIR/nvm.sh" ]; then
  # This loads NVM
  . "$NVM_DIR/nvm.sh"
else
  echo "Error: NVM directory not found or nvm.sh script is missing."
  exit 1
fi

# Install and use node lts
log "Installing node LTS"
nvm install --lts

log "Setting the LTS as default"
nvm alias default 'lts/*'

# Check install
log "Check installation"
echo -n "NVM version: "
nvm --version
echo -n "Node version: "
node -v
echo -n "NPM version: "
npm -v

log "run 'source ~/.zshrc'"
