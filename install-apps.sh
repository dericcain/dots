#!/bin/sh

# Homebrew Script for OSX
# To execute: save and `chmod +x ./brew-install-script.sh` then `./brew-install-script.sh`

echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew cask..."
brew tap caskroom/cask

#Programming Languages
brew install node

#Dev Tools
brew install git

#Communication Apps
brew cask install slack
brew cask install skype

#Web Tools
brew cask install google-chrome
brew cask install firefox
brew cask install 1password
brew cask install arq
brew cask install bartender
brew cask install cloudapp

#File Storage
brew cask install google-drive
brew cask install dropbox

#Entertainment
brew cask install spotify

brew cask install alfred
brew cask install todoist