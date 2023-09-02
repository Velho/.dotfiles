# tmux

Includes very simple tmux configuration. Contains only couple options for now.

## TPM

Many of the tmux plugins requires manager. Install tpm to handle any of the config plugins.
[TPM Github](https://github.com/tmux-plugins/tpm)

## Theme

Nord theme is used for current config. Nord requires [tpm](#TPM)

## Setup

1. Git clone [TPM](#TPM)
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
2. Git clone dotfiles (aka this repository)
3. Create symbolic link from dotfiles to tmux.conf

```
ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
```
4. Start tmux or if you have tmux session running already

```
tmux source ~/.tmux.conf
```

5. Run TPM and install latest plugins from config
    - Install
        - prefix + I
    - Update
        - prefix + U
    - Uninstall
        - prefix + alt + u

