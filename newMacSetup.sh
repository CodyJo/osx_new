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

# Install desired cask packages
brew cask install chrome
brew cask install github
brew cask install pycharm-ce #Python IDE
brew cask install intellij-idea-ce #Java IDE 
brew cask install lastpass #password manager
brew cask install alfred #productivity suite
brew cask install sublime-text #simple text editor
brew cask install beamer #stream 15 min video to appleTv/chromecast free ver or upgrade
brew cask install betterzip #file zipper
brew cask install caffeine #puts tiny icon on right side of menu that you click to prevent mac from sleeping
brew cask install cakebrew #GUI for brew
#brew cask install coconutbattery #Battery health
brew cask install dropbox 
brew cask install forklift #ftp/sftp/webdav/s3 client
brew cask install franz #Slack, WhatsApp, WeChat, HipChat, Facebook Messenger, Telegram, Google Hangouts,GroupMe, Skype ++
brew cask install imageoptim #image optimization tools 
brew cask install kakapo #open source ambient sound mixer for relaxation or productivity https://github.com/bluedaniel/Kakapo-app
brew cask install little-snitch #Network Monitor - list of app & servers, web of global connections, 1 hr of data traffic.
brew cask install marked #Markdown preview & toolset for writers
brew cask install mpv #cross-platform media player
brew cask install qlimagesize #Displays image & file size in title bar
brew cask install qlmarkdown #WQuickly view markdown files
brew cask install tg-pro #Temp sensors, fan speeds, etc
brew cask install the-unarchiver #RAR extractor
brew cask install transmission #BitTorrent client
brew cask install viscosity #VPN Client
brew cask install xld #Lossless Decoder
brew cask install spotify
brew cask install spotify-notifications
brew cask install iterm2


# Link Cask Apps to Alfred
brew cask alfred link

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

# Remove cask cruft
brew cask cleanup



