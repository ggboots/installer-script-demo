#!/bin/bash

echo " --- Setup for Macos Environment --- "
read -p "Press Enter to begin"



echo "1- Downloading NodeJS + HomeBrew + Git"
sleep 0.7
# node install package
open https://nodejs.org/dist/v16.17.1/node-v16.17.1.pkg

#homebrew install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#https://brew.sh

#git install
brew install git 

echo "Download Package managers Complete"
sleep 0.7

#
# 2 - plist Preferences
#
echo "2- Downloading plist preferences ..."
sleep 0.3

#change default to bash 
chsh -s /bin/bash

#zsh message
export BASH_SILENCE_DEPRECATION_WARNING=1

#load time of dock
defaults write com.apple.dock autohide-delay -float 0; defaults write com.apple.dock autohide-time-modifier -int 0; killall Dock
#spacer on dock
defaults write com.apple.dock persistent-apps array-add '{title-data={}; tile-type="spacer-tile";}' && killall Dock;

#remove disk eject message
sudo defaults write /library/Preferences/SystemConfiguration/ com.apple.DiskArbitration.diskarbitrationd.plist DADisableEjectNotification -bool YES && sudo pkill diskarbitrationd

#screenshot png -> jpg
defaults write com.apple.screencapture type jpg 

#wget install

echo "Download plist Complete"
sleep 0.7

#
# 3 - Apps
#

# iterm 2
brew install iterm2

#iterm2 theme (green text 0 255 0 rgb / 
# apple dark mode back ground /
#reuse previous window setting / 
# natural key typing )
#


echo "3- Downloading Apps ..."
sleep 0.3

#rectangle (windows manager)
brew install rectangle

#stats 
brew install --cask stats 

# chrome
open https://www.google.com/intl/en_au/chrome/

# discord
brew install --cask discord

#firefox developer edition
brew install homebrew/cask-version/firefox-developer-edition

# visual studio code
brew install --cask visual-studio-code

# xcode
# final cut pro (app store)
# pixel mater pro (app store)

#4- manual/ optional downloads
# notion (optional)
# figma (optional)

# Resposively App
# blender (optional)

