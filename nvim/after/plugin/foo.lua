-- Contains many short configurations for plugins.
--

require'Comment'.setup()

require'todo-comments'.setup {
  keywords = {
    FIX = {
      alt = { "fixme", "FIXME" }, -- enable lower case as alt
    },
    TODO = { alt = { "todo" }, }
  },
  highlight = {
    multiline = false, -- dont apply multiline
    before = "",
    keyword = "fg",
    after = "fg",
    -- pattern = [[.*<(KEYWORDS|keywords)\s*:]] -- can you set the pattern directly accept lower-case?
  }
}

-- Enable `lukas-reineke/indent-blankline.nvim`
-- See `:help indent_blankline.txt`
require'ibl'.setup()
