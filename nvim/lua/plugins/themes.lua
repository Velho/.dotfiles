return {
    {
        'morhetz/gruvbox',
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme gruvbox]])
        end,
    },
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
    },
    {
        'projekt0n/github-nvim-theme',
        lazy = false,
        priority = 1000,
    },
}
