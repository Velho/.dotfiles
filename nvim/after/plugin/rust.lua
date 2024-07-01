
vim.g.rustaceanvim = function()
  return {
    -- other rustacean settings. --
    server = {
      on_attach = function()
        vim.keymap.set("n", "K", function() vim.cmd.RustLsp { "hover", "actions" } end, { buffer = bufnr })
        -- other settings. -- 
      end
    }
  }
end

