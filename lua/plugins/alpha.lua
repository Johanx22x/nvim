local alpha = require 'alpha'
local dashboard = require 'alpha.themes.dashboard'

-- Set header
dashboard.section.header.val = {
    "",
    "",
    "",
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
}

-- Set sections
dashboard.section.buttons.val = {
  dashboard.button('n', '  New file', ':ene <BAR> startinsert <CR>'),
  dashboard.button('u', '󱐥  Update plugins', ':PackerSync <CR>'),
  dashboard.button('s', '  Settings', ':e $HOME/.config/nvim/init.lua<CR>'),
  dashboard.button('q', '󰿅  Quit', '<cmd>qa<CR>'),
}

-- Set footer
local current_hour = tonumber(os.date("%H"))

local greeting

if current_hour < 5 then
    greeting = "    Good night!"
elseif current_hour < 12 then
    greeting = "  󰼰 Good morning!"
elseif current_hour < 17 then
    greeting = "    Good afternoon!"
elseif current_hour < 20 then
    greeting = "  󰖝  Good evening!"
else
    greeting = "  󰖔  Good night!"
end

dashboard.section.footer.val = greeting

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
