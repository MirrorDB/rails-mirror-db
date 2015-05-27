#!/bin/bash

# Commands Functions
mac_commands() {
    # Install PackageManager (Homebrew)
    `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

    # Install PackageManager Addon
    `brew install caskroom/cask/brew-cask`

    # Install SGBD (MySQL) through brew
    `brew install mysql`

    # Install SGBD View
    `brew cask install mysqlworkbench`

    # Install RVM through cURL, with stable ruby & stable rails & puma
    `\curl -sSL https://get.rvm.io | bash -s stable --ruby --gems=rails,puma`

    # Install RubyMine
    `brew cask install rubymine`
}

ubuntu_commands() {
    # Install SGBD (MySQL) through apt-get
    # Install SGBD View
    # Install cURL
    # Install RVM through cURL, with stable ruby
    # Install stable Rails
    # Install RubyMine

    echo "Hi Ubuntu!"
}

windows_commands() {
    # Install PackageManager (Homebrew)
    # Install SGBD (MySQL) through brew
    # Install SGBD View
    # Install cURL
    # Install RVM through cURL, with stable ruby
    # Install stable Rails
    # Install RubyMine

    echo "Hi Windows!"
}


# Control which function to call based on OS name
os=`uname`
mac="Darwin"
windows="win32"
linux="linux-gnu"

if [[ "$os" == "$mac" ]]
then
    mac_commands
elif [[ "$os" == "$windows" ]]
then
    windows_commands
elif [[ "$os" == "$linux" ]]
then
    ubuntu_commands
else
    echo "Nothing to do here =("
fi