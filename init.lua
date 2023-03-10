--[[
░░░░░██╗░█████╗░██╗░░██╗░█████╗░███╗░░██╗██╗░░██╗██████╗░██████╗░██╗░░██╗
░░░░░██║██╔══██╗██║░░██║██╔══██╗████╗░██║╚██╗██╔╝╚════██╗╚════██╗╚██╗██╔╝
░░░░░██║██║░░██║███████║███████║██╔██╗██║░╚███╔╝░░░███╔═╝░░███╔═╝░╚███╔╝░
██╗░░██║██║░░██║██╔══██║██╔══██║██║╚████║░██╔██╗░██╔══╝░░██╔══╝░░░██╔██╗░
╚█████╔╝╚█████╔╝██║░░██║██║░░██║██║░╚███║██╔╝╚██╗███████╗███████╗██╔╝╚██╗
░╚════╝░░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝╚══════╝╚══════╝╚═╝░░╚═╝

███╗░░██╗██╗░░░██╗██╗███╗░░░███╗  ░█████╗░░█████╗░███╗░░██╗███████╗██╗░██████╗░
████╗░██║██║░░░██║██║████╗░████║  ██╔══██╗██╔══██╗████╗░██║██╔════╝██║██╔════╝░
██╔██╗██║╚██╗░██╔╝██║██╔████╔██║  ██║░░╚═╝██║░░██║██╔██╗██║█████╗░░██║██║░░██╗░
██║╚████║░╚████╔╝░██║██║╚██╔╝██║  ██║░░██╗██║░░██║██║╚████║██╔══╝░░██║██║░░╚██╗
██║░╚███║░░╚██╔╝░░██║██║░╚═╝░██║  ╚█████╔╝╚█████╔╝██║░╚███║██║░░░░░██║╚██████╔╝
╚═╝░░╚══╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝  ░╚════╝░░╚════╝░╚═╝░░╚══╝╚═╝░░░░░╚═╝░╚═════╝░
--]]

-- Load plugins
require("plugins")

-- General settings
require("settings")

-- Load keybindings
require("settings.mappings")

-- Load plugins setup
require("plugins.setup")

-- LSP settings
require("settings.lsp")
