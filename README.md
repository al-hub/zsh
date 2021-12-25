## zsh & oh-my-zsh  
This is for the initial zsh setting for debian (ubuntu)  
You can use 
```
install_zsh.sh
```

or  
install with plugin by manually  
```
sudo apt-get update
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

$ vim ~/.zshrc  
```
ZSH_THEME="bureau" 
plugins=( 
 	git
    	zsh-autosuggestions
    	zsh-syntax-highlighting
)
source ~/.myrc  
```

apply&run  
```
source ~/.zshrc
zsh
```

uninstall  
```
sudo chmod 777 ~/.oh-my-zsh/tools/uninstall.sh
~/.oh-my-zsh/tools/uninstall.sh
```


## Results

![result](doc/zsh.png)


