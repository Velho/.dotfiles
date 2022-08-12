
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    -- use {'dracula/vim', as = 'dracula'}
    use 'folke/tokyonight.nvim'
	use 'projekt0n/github-nvim-theme'

    use {
        'nvim-lualine/lualine.nvim',
	     requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/telescope.nvim'
    use 'jremmen/vim-ripgrep'

    use 'junegunn/fzf.vim'
    use 'rking/ag.vim'
    use 'dyng/ctrlsf.vim'

    -- LSP Configuration
    use 'neovim/nvim-lspconfig'

    use{ 'anuvyklack/pretty-fold.nvim',
       config = function()
          require('pretty-fold').setup()
       end
    }

end)

