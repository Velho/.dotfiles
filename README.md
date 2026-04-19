# dotfiles

Key concept for the configuration files are to correctly symlink them into the dotfiles config.
This enables one source to serve the application.
Each subdirectory contains the necessary to set them up correctly. Some more up to date than others.

## toc

[alacritty](alacritty/README.md)
[kitty](kitty/README.md)
[nvim](nvim/README.md)
[vim](vimrc/README.md)
...


## neovim

Uses lazy.nvim as the plugin manager with key plugins being:
    - lsp
    - telescope
    - neo-tree

With some awesome themes.

Supports neovim's latest release v0.12

### notes

Treesitter should be integrated into the main repository.
The modular configuration as such should be redundant.

## vim

Contains set of configurations for different systems and requirements.

### minimal

No plugins, just basic configuration with set of options for comfortable vimaction.

