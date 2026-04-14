return {
    {
        "lewis6991/gitsigns.nvim",
        event = { "BufReadPre", "BufNewFile" },
        keys = {
            {
                "]c",
                function()
                    if vim.wo.diff then
                        vim.cmd.normal({ "]c", bang = true })
                    else
                        require("gitsigns").nav_hunk("next")
                    end
                end,
                desc = "Next Hunk",
            },
            {
                "[c",
                function()
                    if vim.wo.diff then
                        vim.cmd.normal({ "[c", bang = true })
                    else
                        require("gitsigns").nav_hunk("prev")
                    end
                end,
                desc = "Prev Hunk",
            },

            -- Actions
            { "<leader>hs", function() require("gitsigns").stage_hunk() end, desc = "Stage Hunk" },
            { "<leader>hr", function() require("gitsigns").reset_hunk() end, desc = "Reset Hunk" },

            {
                "<leader>hs",
                function()
                    require("gitsigns").stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
                end,
                mode = "v",
                desc = "Stage Hunk (Visual)",
            },
            {
                "<leader>hr",
                function()
                    require("gitsigns").reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
                end,
                mode = "v",
                desc = "Reset Hunk (Visual)",
            },

            { "<leader>hS", function() require("gitsigns").stage_buffer() end, desc = "Stage Buffer" },
            { "<leader>hR", function() require("gitsigns").reset_buffer() end, desc = "Reset Buffer" },
            { "<leader>hp", function() require("gitsigns").preview_hunk() end, desc = "Preview Hunk" },
            { "<leader>hi", function() require("gitsigns").preview_hunk_inline() end, desc = "Inline Hunk Preview" },

            {
                "<leader>hb",
                function() require("gitsigns").blame_line({ full = true }) end,
                desc = "Blame Line (Full)",
            },

            { "<leader>hd", function() require("gitsigns").diffthis() end, desc = "Diff This" },
            {
                "<leader>hD",
                function() require("gitsigns").diffthis("~") end,
                desc = "Diff This (~)",
            },

            { "<leader>hQ", function() require("gitsigns").setqflist("all") end, desc = "Quickfix All Hunks" },
            { "<leader>hq", function() require("gitsigns").setqflist() end, desc = "Quickfix Hunks" },

            -- Toggles
            { "<leader>tb", function() require("gitsigns").toggle_current_line_blame() end, desc = "Toggle Line Blame" },
            { "<leader>tw", function() require("gitsigns").toggle_word_diff() end, desc = "Toggle Word Diff" },

            -- Text object
            { "ih", function() require("gitsigns").select_hunk() end, mode = { "o", "x" }, desc = "Select Hunk" },
        },

        config = function()
            require("gitsigns").setup()
        end,
    },
    {
        "sindrets/diffview.nvim",
    },
}
