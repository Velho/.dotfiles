require("plugins")

vim.opt.shiftwidth=4
vim.opt.tabstop=4
vim.opt.expandtab = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.mouse = "a"
vim.opt.guifont = "FiraCode Nerd Font Mono:h11"

require ("lualine").setup()

require ("keymap")
