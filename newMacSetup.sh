#!/bin/bash

echo Install Mac App Store apps first.

# Either use mas-cli (https://github.com/argon/mas) or install manually: apps I need: Bear, Tyme, Polarr, Pixelmator, JPEGmini.
read -p "Press any key to continue… " -n1 -s
echo '\n'

echo Installing Homebrew, wget and cask...un moment de panique!!!!!!!!
# Check that Homebrew is installed and install if not
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi
brew update
brew upgrade
brew install wget
brew tap phinze/homebrew-cask

brew install git
brew install node
brew install thefuck #Programatically correct mistyped console commands
brew install fasd #cl productivy tool for file system nav
brew install zsh-completions #cl auto complete ++
brew install awscli
brew install htop #sys resource monitor
brew install nmap #network security scanner
brew install lynx #command line web browser
brew install links #command line web browser
brew install geoip #geolocation data for inputed IP
brew install irssi #rtfm #linux chat 
brew install bash-completion 
brew install watch #keep eye on other process
brew install speedtest_cli
brew install ansiweather #ansiweather -l Denver,CO -u imperial
brew install calc
brew install dockutil  #rtfm #linux chat # --add http://www.codyjo.com --label CodyJo
brew install irssi
brew install irssi #rtfm #linux chat 
brew install imagemagick #convert ee.png ee.jpg or convert -border 1x1 -bordercolor black ee.png resultee.png
brew install darkmode
brew install cowsay #cowsay -f dragon hello


# Install desired cask packages
brew cask install google-chrome
brew cask install github
brew cask install pycharm-ce #Python IDE
brew cask install java
brew cask install intellij-idea-ce #Java IDE 
brew cask install lastpass #password manager
brew cask install sublime-text #simple text editor
brew cask install caffeine #puts tiny icon on right side of menu that you click to prevent mac from sleeping
brew cask install cakebrew #GUI for brew
brew cask install coconutbattery #Battery health
brew cask install dropbox 
brew cask install little-snitch #Network Monitor - list of app & servers, web of global connections, 1 hr of data traffic.
brew cask install spotify
brew cask install iterm2


# Link Cask Apps to Alfred
brew cask alfred link

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

# Remove cask cruft
brew cask cleanup



