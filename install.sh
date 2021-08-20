#!/bin/bash

# Install zsh
apt install -y zsh wget fontconfig
chsh -s /usr/bin/zsh node

# Install fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -P /usr/share/fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf -P /usr/share/fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf -P /usr/share/fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -P /usr/share/fonts

# Rebuild font cache
fc-cache -f -v

# Install Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /home/node/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> /home/node/.zshrc

# Install default config file
wget https://raw.githubusercontent.com/davidtucker/setup-shell/main/.p10k.zsh -P /home/node/
echo '[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh' >> /home/node/.zshrc
