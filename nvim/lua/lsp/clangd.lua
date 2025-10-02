local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config('clangd', {
  -- on_attach = on_attach,
  capabilities = capabilities,
  cmd = { 'clangd' },
  filetypes = { 'c', 'cc', 'cpp' },
  root_markers = { '.clangd', 'compile_commands.json', '.git' },
})

vim.lsp.enable('clangd')
