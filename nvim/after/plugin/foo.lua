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
    --pattern = [[.*<(KEYWORDS|keywords)\s*:]] -- can you set the pattern directly accept lower-case?
    -- matches the keyword upper or lowercase and identifier between parents
    -- matching strings are todo: todo(id): todo (id): todo (longer):
    pattern = [[.*<(KEYWORDS|keywords)\s*(\(\w{2,6}\))?\s*:]],
    comments_only = true,
  }
}

-- Enable `lukas-reineke/indent-blankline.nvim`
-- See `:help indent_blankline.txt`
require'ibl'.setup()

