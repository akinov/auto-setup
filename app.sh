#!/bin/bash
cat << EOS

 AkkeyLab

 The elapsed time does not matter.
 Because speed is important.

EOS

#
# Install web apps.
#
echo " ----- Install web apps ------"
brew cask install android-file-transfer
brew cask install java
brew cask install android-studio
brew cask install docker
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install iterm2
brew cask install sourcetree
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install swimat
brew cask install imageoptim
brew cask install visual-studio-code
# brew cask install gyazo # use gyazo-team
brew cask install zoomus
brew cask install discord
brew cask install rubymine
brew cask install clipy
brew cask install bettertouchtool
brew cask install slack

while true; do
  read -p 'Add "need license" apps? [Y/n]' Answer
  case $Answer in
    '' | [Yy]* )
      brew cask install microsoft-office
      brew cask install intellij-idea
      brew cask install clip-studio-paint
      break;
      ;;
    [Nn]* )
      echo "Skip install"
      break;
      ;;
    * )
      echo Please answer YES or NO.
  esac
done;
echo " ------------ END ------------"

