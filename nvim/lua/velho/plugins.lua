vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    print("loading packer")
    use 'wbthomason/packer.nvim'

    use 'kyazdani42/nvim-web-devicons'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    use { "ellisonleao/gruvbox.nvim" } -- Gruvbox theme

    use {
        'nvim-lualine/lualine.nvim',
         requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/telescope.nvim'

    use 'jremmen/vim-ripgrep'

    -- Is needed ??
    use { 'junegunn/fzf.vim' }
    use { 'junegunn/fzf' }

    use 'rking/ag.vim'
    use 'dyng/ctrlsf.vim'

    -- LSP Configuration
    use 'williamboman/nvim-lsp-installer'
    use 'neovim/nvim-lspconfig'
    use 'natebosch/vim-lsc'
    use { 'neoclide/coc.nvim', branch = 'release' }

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

    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    use 'tiagovla/scope.nvim'

    use {
     'lewis6991/gitsigns.nvim',
      config = function()
          require('gitsigns').setup()
      end
      -- tag = 'release' -- To use the latest release
    }

    -- Git plugins.
    use 'TimUntersberger/neogit'
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

    use {
        "startup-nvim/startup.nvim",
        requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
        config = function()
            require"startup".setup ({ theme = "dashboard" })
        end
    }

    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
          require("toggleterm").setup()
        end
    }

    use { 'iamcco/markdown-preview.nvim' }
    use { 'natecraddock/sessions.nvim' }
end)


