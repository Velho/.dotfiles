# neovim configuration

## setup

1. clone repository

```
    git clone https://github.com/velho/dotfiles ~/.dotfiles
```

2. create symlink to dotfiles repository.

```
    ln -s ~/.dotfiles/nvim ~/.config/nvim
```

3. install plugin manager from [plugins](!plugins)

4. enjoy

## plugins

Configuration uses the packer as the plugin manager tool.

## install

### linux

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

### win

git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"


