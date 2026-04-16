-- forces the osc52 support for the clipboard
-- mainly on older systems running over ssh and tmux is enabled
-- causes this issue with the clipboard. terminal needs to support
-- of course osc52, but it is very common in new terminals

local function is_old_system()
  local path = "/etc/lsb-release"
  local f = io.open(path, "r")
  if not f then
    return false
  end

  for line in f:lines() do
    if line:match("^DISTRIB_RELEASE=14%.04") then
      f:close()
      return true
    end
  end

  f:close()
  return false
end

local function is_tmux()
    return os.getenv("TMUX") ~= nil
end

if is_old_system() and is_tmux() then
    vim.cmd([[let g:clipboard = 'osc52']])
    print("force osc52")
end

