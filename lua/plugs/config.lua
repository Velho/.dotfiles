-- plugs.config -- User Plugin configurations
--
-- Set the user plugin configurations. Call the different
-- plugins and configure the plugins with user settings.
--

require('lualine').setup()
require('github-theme').setup()

require('nvim-tree').setup {
    update_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
}

require('bufferline').setup()

require('toggleterm').setup()

require ('nvim-lsp-installer').setup {
    automatic_installation = true
}

require('plugs.lsp-confs')

-- print "Configured plugins."

