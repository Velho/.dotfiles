local lspconfig = require'lspconfig'
local root_pattern = lspconfig.util.root_pattern

-- Mappings. See `:help vim.diagnostic.*` for documentation on any of the below functions local opts = { noremap=true, silent=true } vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts) vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts) vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts) vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts) -- Use an on_attach function to only map the following keys after the language server attaches to the current buffer

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

-- for better completion experience
-- vim.o.completeopt = 'menuone,noselect'

require'cmp'.setup {
  sources = { name = 'nvim_lsp_signature_help' }
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()


-- require'fidget'.setup()
local servers = { 'robotframework_ls', 'clangd', 'cmake', 'pyright', 'lua_ls', 'marksman', 'rust_analyzer' }
-- Ensure the servers above are installed
for _, lsp in ipairs(servers) do
  require('lspconfig')[lsp].setup {
    -- on_attach = on_attach,
    capabilities = capabilities,
  }
end

require('lspconfig')['pyright'].setup{
  on_attach = on_attach,
  -- flags = lsp_flags,
}

local util = require'lspconfig'.util

require'lspconfig'.clangd.setup {
  -- on_attach = on_attach,
  capabilities = capabilities,
  cmd = {
    "/usr/bin/clangd",
    -- "--completion-parse=always",
    -- "--completion-style=completion",
    -- "--log=verbose",
  },
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
  root_dir = lspconfig.util.root_pattern(
    '.clangd'
    ,'.clang-tidy'
    ,'.clang-format'
    ,'compile_commands.json'
    ,'compile_flags.txt'
    ,'configure.ac'
    ,'.git'
  ),
}

require'lspconfig'.cmake.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "cmake", "txt" },
}

require('lspconfig').lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = {'vim'},
      },
      telemetry = {
        enable = false,
      }
    },
  },
}

require'lspconfig'.marksman.setup {}
