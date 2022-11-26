-- plugs.config -- User Plugin configurations
--
-- Set the user plugin configurations. Call the different
-- plugins and configure the plugins with user settings.
--

print("loading plugs.config")

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    }
}

require('gruvbox').setup()

require('nvim-tree').setup {
    update_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
}

-- vim.opt.termguicolors = true
require('bufferline').setup {
    options = {
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',

        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
                separator = true,
            }
        },
        color_icons = true,
    },
}

require ('nvim-lsp-installer').setup {
    automatic_installation = true
}

vim.o.background = "dark"
vim.cmd("colorscheme gruvbox")

