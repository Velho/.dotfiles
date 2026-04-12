return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
            },
            "nvim-telescope/telescope-file-browser.nvim",
            "nvim-telescope/telescope-live-grep-args.nvim",
            "princejoogie/dir-telescope.nvim",
        },
        config = function()
            require("telescope").setup()
            require("telescope").load_extension("fzf")
            require("telescope").load_extension("file_browser")
            require("telescope").load_extension("live_grep_args")
            require("telescope").load_extension("dir")
        end,
        opts = function(_, opts)
            local lga_actions = require("telescope-live-grep-args.actions")
            opts.extensions = {
                live_grep_args = {
                    auto_quoting = true, -- enable/disable auto-quoting
                    -- define mappings, e.g.
                    mappings = { -- extend mappings
                        i = {
                            ["<C-k>"] = lga_actions.quote_prompt(),
                            ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
                        },
                    },
                },
            }
        end,
        keys = {
            {
                "<leader>sf",
                -- function() require("telescope.builtin").find_files() end,
                function() require("telescope").extensions.dir.find_files() end,
            },
            {
                "<leader>srf",
                function() require("telescope.builtin").find_files() end,
            },
            {
                "<leader>sg",
                function() require("telescope").extensions.dir.live_grep() end,
            },
            {
                "<leader>srg",
                function() require("telescope.builtin").live_grep() end,
            },
            {
                "<leader>sw",
                function() require("telescope.builtin").grep_string() end,
            },
            {
                "<leader>sb",
                function() require("telescope.builtin").buffers() end,
            },
            {
                "<leader>ss",
                function() require("telescope.builtin").current_buffer_fuzzy_find() end,
            },
            {
                "<leader>gc",
                function() require("telescope.builtin").git_commits() end,
            },
            {
                "<leader>gs",
                function() require("telescope.builtin").git_status() end,
            },

        },
    },
}
