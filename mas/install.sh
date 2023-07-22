#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew); then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Check for mas-cli
if test ! $(which mas); then
  echo "  Installing mas-cli for you."

  # Install mas-cli for you
  brew install mas
fi

apps=(
  985367838   # Microsoft Outlook
  462054704   # Microsoft Word
  462058435   # Microsoft Excel
  462062816   # Microsoft PowerPoint
  784801555   # Microsoft OneNote
  1295203466  # Microsoft Remote Desktop
  823766827   # OneDrive
  922765270   # LiquidText
  497799835   # Xcode
  441258766   # Magnet
  724472954   # Manico
  1475387142  # Tailscale
)

echo "Installing apps from mas-cli..."
mas install ${apps[@]}

exit 0