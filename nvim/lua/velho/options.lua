-- opt.guicursor = ""

local opt = vim.opt

opt.guicursor = ""
opt.nu = true
opt.relativenumber = true

-- opt.softtabstop = 4
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

opt.termguicolors = true
-- opt.sessionoptions+=globals

-- opt.foldmethod = "expr"
opt.foldmethod = "manual"
opt.foldexpr = "nvim_treesitter#foldexpr()"

opt.updatetime = 50
-- opt.colorcolumn = 80

