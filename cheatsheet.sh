#!/bin/bash

#source will execute script
source bashscript.sh
#echo "Setup $begin"
#echo "$displayTime"
begin=$1
displayTime=$(date)

#cheatsheet

#.sh executable command
# https://ss64.com/osx/syntax-shellscript.html

#------
# call another script
# https://www.delftstack.com/howto/linux/bash-call-another-script/

#------
#difference between #wget + #cURL 

#wget
# has recursive downloads
# brew install wget 

#cURL
# curl has a library, whereas wget is a command tool only 
# supports multiple protocols, like FTP(s), HTTP(S) and more
# already part of mac/windows OS


#other 
# wget -P /desktop https://releases.ubuntu.com/20.04/ubuntu-20.04-desktop-amd64.iso  
# open is for macos (https://stackoverflow.com/questions/38147620/shell-script-to-open-a-url)
# wget -P /ggboots/ https://assets2.razerzone.com/images/pnx.assets/d5066a778ec46f45c8805dc03dd6a7f9/fl-studio-banner-450x450.jpg