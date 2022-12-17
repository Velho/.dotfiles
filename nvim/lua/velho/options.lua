local opt = vim.opt

opt.guicursor = ""
opt.nu = true
opt.relativenumber = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.hlsearch = false
opt.incsearch = true

opt.smartindent = true
opt.wrap = false
vim.o.ignorecase = true
vim.o.smartcase = true

opt.mouse = 'a'
opt.guifont = "SauceCodePro Nerd Font Mono:h11"

opt.cmdheight = 1 -- cmd height

opt.termguicolors = true
-- opt.sessionoptions+=globals
-- opt.foldmethod = "expr"

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.fen = false

opt.updatetime = 250

-- Set up the theme.
vim.o.termguicolors = true
vim.cmd [[colorscheme onedark]]

vim.o.completeopt = 'menuone,noselect'
