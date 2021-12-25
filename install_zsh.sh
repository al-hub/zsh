#!/bin/sh

sudo apt-get update
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
upgrade_oh_my_zsh

#Font
sudo apt install fonts-powerline

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "vim ~/.zshrc			"
echo "ZSH_THEME=\"bureau\"		" 
echo "plugins=(				"
echo "		git 			"
echo "   	zsh-autosuggestions	"
echo "   	zsh-syntax-highlighting	"
echo ")					"
echo "source ~/.myr	c		"
echo "					"
echo "source ~/.zshrc			"

copy_zsh()
{
    curl -fLo ~/.oh-my-zsh/themes/agnoster_right.zsh-theme --create-dirs https://raw.githubusercontent.com/al-hub/zsh/main/agnoster_right.zsh-theme
    curl -fLo ~/.oh-my-zsh/themes/bureau_right.zsh-theme --create-dirs https://raw.githubusercontent.com/al-hub/zsh/main/bureau_right.zsh-theme
    curl -fLo ~/.zshrc --create-dirs https://raw.githubusercontent.com/al-hub/zsh/main/.zshrc
}

read -p "will you force copy .zshrc configure files?(y/n) :" yn 
case $yn in
       	[Yy]* ) copy_zsh ; break;;
       	[Nn]* ) exit;;
esac

