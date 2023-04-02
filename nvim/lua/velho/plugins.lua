vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    print("loading packer")
    use 'wbthomason/packer.nvim'

    use 'kyazdani42/nvim-web-devicons'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    use {
        "ellisonleao/gruvbox.nvim",
        config = function()
            require'gruvbox'.setup()
        end
    } -- Gruvbox theme

    use {
        'nvim-lualine/lualine.nvim',
         requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use 'nvim-treesitter/nvim-treesitter-context'

    use 'nvim-lua/popup.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

    use {
     'lewis6991/gitsigns.nvim',
      config = function()
          require('gitsigns').setup()
      end
      -- tag = 'release' -- To use the latest release
    }
    -- LSP plugins

    use { -- LSP Configuration & Plugins
        'neovim/nvim-lspconfig',
        requires = {
            -- Automatically install LSPs to stdpath for neovim
            -- 'williamboman/mason.nvim',
            -- 'williamboman/mason-lspconfig.nvim',

            -- Useful status updates for LSP
            'j-hui/fidget.nvim',
        },
    }

    use 'ray-x/lsp_signature.nvim'
    use 'p00f/clangd_extensions.nvim'

    use { -- Autocompletion
        'hrsh7th/nvim-cmp',
        requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
    }

    use 'hrsh7th/cmp-buffer'
    -- For path completion
    use 'hrsh7th/cmp-path'

    use 'williamboman/nvim-lsp-installer'
    use 'folke/which-key.nvim'
    -- autopair [], {}, etc
    use 'windwp/nvim-autopairs'

    use { -- Additional text objects via treesitter
        'nvim-treesitter/nvim-treesitter-textobjects',
        after = 'nvim-treesitter',
    }

    use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'

    use 'navarasu/onedark.nvim' -- Theme inspired by Atom
    use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines
    use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines
    use 'tpope/vim-sleuth' -- Detect tabstop and shiftwidth automatically

    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }

    -- Git plugins.
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

    -- testing out these
    use 'preservim/nerdcommenter'
    use 'voldikss/vim-floaterm'
end)

