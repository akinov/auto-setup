#!/bin/bash

command_exists () {
  command -v "$1" > /dev/null;
}

#
# Install homebrew.
#
if ! command_exists brew ; then
  echo " --------- Homebrew ----------"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
  echo "eval $($(brew --prefix)/bin/brew shellenv)" >>~/.profile
  brew update
  brew upgrade --all --cleanup
  brew -v
  echo " ------------ END ------------"
fi

#
# Install git
#
if ! command_exists git ; then
  echo " ------------ Git ------------"
  brew install git
  git --version
  echo " ------------ END ------------"
fi

#
# mac-auto-setup.git
#
echo " ---- mac-auto-setup.git -----"
git clone https://github.com/akinov/auto-setup.git
echo " ------------ END ------------"
