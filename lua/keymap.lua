require ("remap")

map("n", "<leader>pv", ":Ex<CR>")
map("n", "<leader>w", ":w<CR>")

map('n', '<C-p>', ':lua require"telescope.builtin".find_files()<CR>')
map('n', '<leader>fs', ':lua require"telescope.builtin".live_grep()<CR>')
map('n', '<leader>fh', ':lua require"telescope.builtin".help_tags()<CR>')
map('n', '<leader>fb', ':lua require"telescope.builtin".buffers()<CR>')

map('n', '<C-F>f', '<Plug>CtrlSFPrompt') -- nmap <C-F>f <Plug>CtrlSFPrompt
map('n', '<C-F>o', ':CtrlSFOpen<CR>')
map('n', '<C-F>t', ':CtrlSFToggle<CR>')
map('n', '<C-F>o', 'CtrlSFOpen<CR>')
map('n', '<C-F>p', '<Esc>:CtrlSFToggle<CR>')
map('i', '<C-F>p', '<Esc>:CtrlSFToggle<CR>')

-- vmap     <C-F>f <Plug>CtrlSFVwordPath
-- vmap     <C-F>F <Plug>CtrlSFVwordExec
-- nmap     <C-F>n <Plug>CtrlSFCwordPath
-- nmap     <C-F>p <Plug>CtrlSFPwordPath
-- nnoremap 
-- nnoremap inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
