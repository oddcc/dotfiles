#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

fi

# Upgrade homebrew
echo "› brew update"
brew update

brew tap afutured/openai-translator
brew tap jesseduffield/lazydocker

binaries=(
  cloudflared
  bitwarden-cli
  ffmpeg
  mas
  neovim
  jesseduffield/lazydocker/lazydocker
)

echo "Installing binaries..."
brew install ${binaries[@]}

apps=(
  # apps
  adguard
  anki
  google-chrome
  warp
  openai-translator
  # system
  hiddenbar
  input-source-pro
  monitorcontrol
  appcleaner
  openinterminal
  raycast
  the-unarchiver
  cloudflare-warp
  caffeine
  keyboard-cleaner
  clashx-pro
  # media
  iina
  plex
  imazing
  notion
  # dev
  visual-studio-code
  orbstack
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "Installing apps..."
brew install --cask --appdir="/Applications" ${apps[@]}

fonts=(
  font-ibm-plex-mono
  font-sarasa-gothic
)

echo "Installing fonts..."
brew install ${fonts[@]}

brew cleanup

exit 0
