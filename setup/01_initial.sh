#!/bin/bash

"${SUDO}"apt -y update
"${SUDO}"apt -y install zsh git tmux curl unzip

# Make zsh default shell
chsh -s $(which zsh)

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# pull dotfiles
echo ".cfg" >> .gitignore
git clone --bare https://github.com/wheelebin/dots.git $HOME/.cfg
configCMD="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

mkdir -p $HOME/.config-backup
$configCMD checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv $HOME/{} $HOME/.config-backup/{}
$configCMD checkout


# fnm & latest LTS node version
curl -fsSL https://fnm.vercel.app/install | bash 
zsh -c "source /root/.zshrc; fnm install --lts"
