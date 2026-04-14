
-- wrapper to map keybinds
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


-- 
map('n', '<leader>b[', ':bnext<CR>')
map('n', '<leader>b]', ':bprev<CR>')

-- Close current buffer
map('n', '<leader>bq', ':Bdelete<CR>')

