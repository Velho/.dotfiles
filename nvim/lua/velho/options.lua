
vim.o.guicursor = ""
vim.o.nu = true
vim.o.relativenumber = true

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.smartindent = true
vim.o.wrap = false
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.mouse = 'a'
vim.o.guifont = "SauceCodePro Nerd Font Mono:h11"

vim.o.cmdheight = 1 -- cmd height

vim.o.termguicolors = true
-- opt.sessionoptions+=globals
vim.o.foldmethod = "expr"
-- opt.foldexpr = "nvim_treesitter#foldexpr()"
-- opt.fen = false

vim.o.updatetime = 50

-- Set up the theme.
vim.o.termguicolors = true
vim.cmd [[colorscheme onedark]]

vim.o.completeopt = 'menuone,noselect'

vim.cmd [[ set clipboard+=unnamedplus ]]

-- ufo settings
vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
