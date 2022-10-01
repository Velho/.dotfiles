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
    use 'williamboman/nvim-lsp-installer'
    use 'neovim/nvim-lspconfig'

    use 'natebosch/vim-lsc'

    use 'mfussenegger/nvim-jdtls'

    use{ 'anuvyklack/pretty-fold.nvim',
       config = function()
          require('pretty-fold').setup()
       end
    }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
    
    use {
      'lewis6991/gitsigns.nvim',
      config = function()
          require('gitsigns').setup()
      end
      -- tag = 'release' -- To use the latest release
    }

    use {
        "akinsho/toggleterm.nvim", tag = 'v2.*'
    }

end)

-- require('plugs.config')

