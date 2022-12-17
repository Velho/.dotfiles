function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<leader>pv', ':Ex<CR>')
map('n', '<leader>pl', ':ls<CR>')
map('n', '<leader>w', ':w<CR>')

-- map('n', '<C-p>', ':lua require"telescope.builtin".find_files()<CR>')
-- map('n', '<leader>fs', ':lua require"telescope.builtin".live_grep()<CR>')
-- map('n', '<leader>fh', ':lua require"telescope.builtin".help_tags()<CR>')
-- map('n', '<leader>fb', ':lua require"telescope.builtin".buffers()<CR>')

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

map('n', '<leader>b[', ':bnext<CR>')
map('n', '<leader>b]', ':bprev<CR>')
-- map('n', '<leader>[b', ':BufferLineCycleNext<CR>')
-- map('n', '<leader>b]', ':BufferLineCycleNext<CR>')

map('n', '<leader>be', ':BufferLineSortByExtensions<CR>')
map('n', '<leader>bd', ':BufferLineSortByDirectory<CR>')


-- Close current buffer
map('n', '<leader>bq', ':Bdelete<CR>')

-- Keymap for toggleterm.
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- vim.cmd("autocmd TermEnter term://*toggleterm#*")
-- vim.cmd('tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>')
-- 
-- vim.cmd('nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>')
-- vim.cmd('inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>')
-- 
-- Terminal:new({
--     cmd = "pwsh",
-- })
