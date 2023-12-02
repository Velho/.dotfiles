# vim configuration

## setup

create symlink for the vim and vimrc

ln -s ~/.dotfiles/.vim ~/.vim
ln -s ~/.dotfiles/.vimrc ~/.vimrc

on windows use the New-Item (required admin to create symlinks)

```
New-Item -ItemType SymbolicLink -Path ~/.dotfiles/.vimrc -Target ~/_vimrc
```

## plugins

vimrc uses vim-plug as it's plugin manager. so called minimalist plugin manager.

### install

- linux

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

- win

    iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force

