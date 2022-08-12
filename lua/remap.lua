function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<leader>pv", ":Ex<CR>")
map("n", "<leader>w", ":w<CR>")

map('n', '<C-p>', ':lua require"telescope.builtin".find_files()<CR>')
map('n', '<leader>fs', ':lua require"telescope.builtin".live_grep()<CR>')
map('n', '<leader>fh', ':lua require"telescope.builtin".help_tags()<CR>')
map('n', '<leader>fb', ':lua require"telescope.builtin".buffers()<CR>')

