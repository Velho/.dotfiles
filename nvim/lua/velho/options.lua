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

opt.mouse = "a"
opt.guifont = "SauceCodePro Nerd Font Mono:h11"

opt.cmdheight = 1 -- cmd height

opt.termguicolors = true
-- opt.sessionoptions+=globals
-- opt.foldmethod = "expr"

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.fen = false

opt.updatetime = 50
-- opt.colorcolumn = 80

-- Set up the theme.
vim.o.background = "dark"
vim.cmd("colorscheme gruvbox")

-- vim.cmd("set statusline+=%{get(b:,'gitsigns_status','')}")

