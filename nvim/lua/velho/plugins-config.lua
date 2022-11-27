-- plugs.config -- User Plugin configurations
--
-- Set the user plugin configurations. Call the different
-- plugins and configure the plugins with user settings.
--

print("loading plugs.config")

require'nvim-treesitter.configs'.setup {

    ensure_installed = { "c", "cpp", "lua" },
    auto_install = true,
    highlight = {
        enable = true,
        -- additional_vim_regex_highlighting = false
    },
    indent = {
        enable = true
    },
}

require'lualine'.setup {
    options = {
        icons_enabled = true,
        theme = 'gruvbox',
        --globalstatus = false,
        disabled_filetypes = { 'NvimTree' }
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    }
}

require'gruvbox'.setup()

require'nvim-tree'.setup {
    update_cwd = true,
    reload_on_bufenter = true,
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
}

-- vim.opt.termguicolors = true
require'bufferline'.setup {
    options = {
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',

        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
                separator = true,
            }
        },
        color_icons = true,
    },
}

require'nvim-lsp-installer'.setup {
    automatic_installation = true
}

require'gitsigns'.setup {
    signs = {
        add          = { hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'    },
        change       = { hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn' },
        delete       = { hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn' },
        topdelete    = { hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn' },
        changedelete = { hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn' },
        untracked    = { hl = 'GitSignsAdd'   , text = '┆', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'    },
    },
    signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
    numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
    linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
    word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
    watch_gitdir = {
        interval = 1000,
        follow_files = true
    },
    attach_to_untracked = true,
    current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
        delay = 1000,
        ignore_whitespace = false,
    },
    current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
    sign_priority = 6,
    update_debounce = 100,
    status_formatter = nil, -- Use default
    max_file_length = 40000, -- Disable if file is longer than this (in lines)
    preview_config = {
        -- Options passed to nvim_open_win
        border = 'single',
        style = 'minimal',
        relative = 'cursor',
        row = 0,
        col = 1
    },
    yadm = {
        enable = false
    },
}


require'scope'.setup() -- Run the default setup.
require'diffview'.setup()


require'neogit'.setup{
  disable_signs = false,
  disable_hint = false,
  disable_context_highlighting = false,
  disable_commit_confirmation = false,
  -- Neogit refreshes its internal state after specific events, which can be expensive depending on the repository size. 
  -- Disabling `auto_refresh` will make it so you have to manually refresh the status after you open it.
  auto_refresh = true,
  disable_builtin_notifications = false,
  use_magit_keybindings = false,
  -- Change the default way of opening neogit
  kind = "tab",
  -- Change the default way of opening the commit popup
  commit_popup = {
    kind = "split",
  },
  -- Change the default way of opening popups
  popup = {
    kind = "split",
  },
  -- customize displayed signs
  signs = {
    -- { CLOSED, OPENED }
    section = { ">", "v" },
    item = { ">", "v" },
    hunk = { "", "" },
  },
  integrations = {
    -- Neogit only provides inline diffs. If you want a more traditional way to look at diffs, you can use `sindrets/diffview.nvim`.
    -- The diffview integration enables the diff popup, which is a wrapper around `sindrets/diffview.nvim`.
    --
    -- Requires you to have `sindrets/diffview.nvim` installed.
    -- use { 
    --   'TimUntersberger/neogit', 
    --   requires = { 
    --     'nvim-lua/plenary.nvim',
    --     'sindrets/diffview.nvim' 
    --   }
    -- }
    --
    diffview = false  
  },
  -- Setting any section to `false` will make the section not render at all
  sections = {
    untracked = {
      folded = false
    },
    unstaged = {
      folded = false
    },
    staged = {
      folded = false
    },
    stashes = {
      folded = true
    },
    unpulled = {
      folded = true
    },
    unmerged = {
      folded = false
    },
    recent = {
      folded = true
    },
  },
  -- override/add mappings
  mappings = {
    -- modify status buffer mappings
    status = {
      -- Adds a mapping with "B" as key that does the "BranchPopup" command
      ["B"] = "BranchPopup",
      -- Removes the default mapping of "s"
      ["s"] = "",
    }
  }
}
