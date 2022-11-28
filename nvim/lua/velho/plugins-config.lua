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

-- Run the default setup.
require'scope'.setup() 
require'diffview'.setup()

require'toggleterm'.setup {
  -- size can be a number or function which is passed the current terminal
--   size = 20 | function(term)
--     if term.direction == "horizontal" then
--       return 15
--     elseif term.direction == "vertical" then
--       return vim.o.columns * 0.4
--     end
--   end,
  -- open_mapping = [[<c-\>]],
--   on_create = fun(t: Terminal), -- function to run when the terminal is first created
--   on_open = fun(t: Terminal), -- function to run when the terminal opens
--   on_close = fun(t: Terminal), -- function to run when the terminal closes
--   on_stdout = fun(t: Terminal, job: number, data: string[], name: string) -- callback for processing output on stdout
--   on_stderr = fun(t: Terminal, job: number, data: string[], name: string) -- callback for processing output on stderr
--   on_exit = fun(t: Terminal, job: number, exit_code: number, name: string) -- function to run when terminal process exits
  hide_numbers = true, -- hide the number column in toggleterm buffers
--  shade_filetypes = {},
  autochdir = false, -- when neovim changes it current directory the terminal will change it's own when next it's opened
--   highlights = {
--     -- highlights which map to a highlight group name and a table of it's values
--     -- NOTE: this is only a subset of values, any group placed here will be set for the terminal window split
--     Normal = {
--       guibg = "<VALUE-HERE>",
--     },
--     NormalFloat = {
--       link = 'Normal'
--     },
--     FloatBorder = {
--       guifg = "<VALUE-HERE>",
--       guibg = "<VALUE-HERE>",
--     },
--   },
  shade_terminals = true, -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
  shading_factor = '1', -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
  start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
  persist_size = true,
  persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
  direction = 'float',
  close_on_exit = true, -- close the terminal window when the process exits
  shell = 'pwsh',-- vim.o.shell, -- change the default shell
  auto_scroll = true, -- automatically scroll to the bottom on terminal output
  -- This field is only relevant if direction is set to 'float'
  float_opts = {
    -- The border key is *almost* the same as 'nvim_open_win'
    -- see :h nvim_open_win for details on borders however
    -- the 'curved' border is a custom border type
    -- not natively supported but implemented in this plugin.
    border = 'shadow', -- or "shadow" ... other options supported by win open
    -- like `size`, width and height can be a number or function which is passed the current terminal
    width = 80,
    height = 40,
    winblend = 3,
  },
  winbar = {
    enabled = false,
    name_formatter = function(term) --  term: Terminal
      return term.name
    end
  },
}

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

local Path = require('plenary.path')
require('session_manager').setup({
    sessions_dir = Path:new(vim.fn.stdpath('data'), 'sessions'), -- The directory where the session files will be saved.
    path_replacer = '__', -- The character to which the path separator will be replaced for session files.
    colon_replacer = '++', -- The character to which the colon symbol will be replaced for session files.
    autoload_mode = require('session_manager.config').AutoloadMode.LastSession, -- Define what to do when Neovim is started without arguments. Possible values: Disabled, CurrentDir, LastSession
    autosave_last_session = true, -- Automatically save last session on exit and on session switch.
    autosave_ignore_not_normal = true, -- Plugin will not save a session when no buffers are opened, or all of them aren't writable or listed.
    autosave_ignore_dirs = {}, -- A list of directories where the session will not be autosaved.
    autosave_ignore_filetypes = { -- All buffers of these file types will be closed before the session is saved.
        'gitcommit',
    },
    autosave_ignore_buftypes = {}, -- All buffers of these bufer types will be closed before the session is saved.
    autosave_only_in_session = false, -- Always autosaves session. If true, only autosaves after a session is active.
    max_path_length = 80,  -- Shorten the display path if length exceeds this threshold. Use 0 if don't want to shorten the path at all.
})


