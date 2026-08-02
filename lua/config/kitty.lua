-- Zero kitty's window padding while neovim runs.
--
-- The padding is painted by kitty, not by the program inside it, so a
-- full-screen TUI stops at the gutter and its statusline or tabline ends up
-- framed by a strip of terminal background. Rather than dropping the padding
-- globally, ask kitty to drop it for this window only, and restore it on the
-- way out.
--
-- Requires, in kitty.conf:
--     allow_remote_control password
--     remote_control_password "" set-spacing
--     listen_on unix:@kitty-{kitty_pid}
-- Outside kitty the environment variables are absent and this does nothing.

local socket = vim.env.KITTY_LISTEN_ON
local window = vim.env.KITTY_WINDOW_ID

if not (socket and window) then
  return
end

-- "default" restores window_padding_width from kitty.conf.
local function set_padding(value, wait)
  local proc = vim.system({
    "kitty", "@", "--to", socket,
    "set-spacing", "--match", "id:" .. window,
    "padding=" .. value,
  })
  -- On the exit path the process would be orphaned mid-flight, so block
  -- briefly to make sure kitty got the message.
  if wait then
    proc:wait(1000)
  end
end

set_padding(0)

local group = vim.api.nvim_create_augroup("KittyPadding", { clear = true })

-- Ctrl-Z hands the terminal back to the shell: give the padding back too.
vim.api.nvim_create_autocmd("VimSuspend", {
  group = group,
  callback = function() set_padding("default", true) end,
})

vim.api.nvim_create_autocmd("VimResume", {
  group = group,
  callback = function() set_padding(0) end,
})

vim.api.nvim_create_autocmd("VimLeavePre", {
  group = group,
  callback = function() set_padding("default", true) end,
})
