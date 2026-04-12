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
        config = function()
            local lspconfig = require("lspconfig")
            local cmp = require('cmp')
            local cmp_lsp = require("cmp_nvim_lsp")
            local capabilities = require("cmp_nvim_lsp").default_capabilities(
                vim.lsp.protocol.make_client_capabilities()
            )

            local on_attach = function(client, bufnr)
                local opts = { buffer = bufnr }

                vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
            end

            local servers =  {
                clangd = {},
            }

            for server, config in pairs(servers) do
                vim.lsp.config[server] = {
                    capabilities = capabilities,
                    on_attach = on_attach,
                    settings = config,
                }
                vim.lsp.enable(server)
            end

            vim.diagnostic.config({
                -- update_in_insert = true,
                float = {
                        focusable = false,
                        style = "minimal",
                        border = "rounded",
                        source = "always",
                        header = "",
                        prefix = "",
                    },
                })

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
