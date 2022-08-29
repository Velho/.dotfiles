function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<leader>pv', ':Ex<CR>')
map('n', '<leader>w', ':w<CR>')
map('n', '<leader>l', ':ls<CR>')

map('n', '<C-p>', ':lua require"telescope.builtin".find_files()<CR>')
map('n', '<leader>fs', ':lua require"telescope.builtin".live_grep()<CR>')
map('n', '<leader>fh', ':lua require"telescope.builtin".help_tags()<CR>')
map('n', '<leader>fb', ':lua require"telescope.builtin".buffers()<CR>')

-- nvim-tree keymaps
map('n', '<leader>tt', ':NvimTreeToggle<CR>')      -- tt -> TreeToggle
map('n', '<leader>tf', ':NvimTreeFocus<CR>')       -- tf -> TreeFocus
map('n', '<leader>tff', ':NvimTreeFindFile<CR>')   -- tff -> TreeFindFile (does tff work, no conflicts??)
map('n', '<leader>tc', ':NvimTreeCollapse<CR>')    -- tc -> TreeCollapse

-- bufferline keymaps
map('n', '<silent><leader>1', ':lua require"bufferline".go_to_buffer(1, true)<CR>')
map('n', '<silent><leader>2', ':lua require"bufferline".go_to_buffer(2, true)<CR>')
map('n', '<silent><leader>3', ':lua require"bufferline".go_to_buffer(3, true)<CR>')
map('n', '<silent><leader>4', ':lua require"bufferline".go_to_buffer(4, true)<CR>')
map('n', '<silent><leader>5', ':lua require"bufferline".go_to_buffer(5, true)<CR>')
map('n', '<silent><leader>6', ':lua require"bufferline".go_to_buffer(6, true)<CR>')
map('n', '<silent><leader>7', ':lua require"bufferline".go_to_buffer(7, true)<CR>')
map('n', '<silent><leader>8', ':lua require"bufferline".go_to_buffer(8, true)<CR>')
map('n', '<silent><leader>9', ':lua require"bufferline".go_to_buffer(9, true)<CR>')

map('n', '<silent>[b', ':BufferLineCycleNext<CR>')
map('n', '<silent>b]', ':BufferLineCycleNext<CR>')

map('n', '<silent>be', ':BufferLineSortByExtensions<CR>')
map('n', '<silent>bd', ':BufferLineSortByDirectory<CR>')
