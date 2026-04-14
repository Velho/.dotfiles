return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/nvim-cmp",
            "saadparwaiz1/cmp_luasnip",
        },
        event = "BufReadPre", 
        keys = {
            { "gd", vim.lsp.buf.definition, desc = "Go to Definition" },
            { "gD", vim.lsp.buf.declaration, desc = "Go to Declaration" },
            { "K", vim.lsp.buf.hover, desc = "Hover Documentation" },
            { "<leader>rn", vim.lsp.buf.rename, desc = "Rename Symbol" },
            { "gi", vim.lsp.implementation, desc = "Go to Implementation" },
            { "<space>e", vim.diagnostic.open_float, desc = "Show diagnostics" },
            { "<C-k>", vim.lsp.buf.signature_help, desc = "Show Signature help" },
            { "gr", vim.lsp.buf.references, desc = "Show References" },
        },
        config = function()
            local lspconfig = require("lspconfig")
            local cmp = require('cmp')
            local cmp_lsp = require("cmp_nvim_lsp")

            cmp.setup {
                sources = {
                    { name = 'nvim_lsp_signature_help' }
                }
            }

            local on_attach = function(client, bufnr)
                local opts = { buffer = bufnr }
                -- can be used for other on_attach needs
            end

            local servers =  {
                clangd = {},
                pyright = {},
                -- add more stuff here
            }
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            for server, config in pairs(servers) do
                vim.lsp.config(server, {
                    capabilities = capabilities,
                    on_attach = on_attach,
                    settings = config,
                })
                vim.lsp.enable(server)
            end

        end,
    },
    {
        'mrcjkb/rustaceanvim',
        lazy = false,
        config = function()
            vim.g.rustaceanvim = {
                server = {
                    on_attach = function(client, bufnr)
                        -- Code action
                        vim.keymap.set("n", "<leader>a", function()
                            vim.cmd.RustLsp("codeAction")
                        end, { buffer = bufnr, silent = true })

                        -- Hover actions (override K)
                        vim.keymap.set("n", "K", function()
                            vim.cmd.RustLsp({ "hover", "actions" })
                        end, { buffer = bufnr, silent = true })
                    end,
                },
            }
        end,
    },
}
