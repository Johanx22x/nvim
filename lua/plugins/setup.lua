--[[
██████╗░██╗░░░░░██╗░░░██╗░██████╗░██╗███╗░░██╗░██████╗  ░██████╗███████╗████████╗██╗░░░██╗██████╗░
██╔══██╗██║░░░░░██║░░░██║██╔════╝░██║████╗░██║██╔════╝  ██╔════╝██╔════╝╚══██╔══╝██║░░░██║██╔══██╗
██████╔╝██║░░░░░██║░░░██║██║░░██╗░██║██╔██╗██║╚█████╗░  ╚█████╗░█████╗░░░░░██║░░░██║░░░██║██████╔╝
██╔═══╝░██║░░░░░██║░░░██║██║░░╚██╗██║██║╚████║░╚═══██╗  ░╚═══██╗██╔══╝░░░░░██║░░░██║░░░██║██╔═══╝░
██║░░░░░███████╗╚██████╔╝╚██████╔╝██║██║░╚███║██████╔╝  ██████╔╝███████╗░░░██║░░░╚██████╔╝██║░░░░░
╚═╝░░░░░╚══════╝░╚═════╝░░╚═════╝░╚═╝╚═╝░░╚══╝╚═════╝░  ╚═════╝░╚══════╝░░░╚═╝░░░░╚═════╝░╚═╝░░░░░
]]--

-- Treesitter
require("plugins.treesitter")

-- Todo comments
require("plugins.todo-comments")

-- Lualine
require("plugins.lualine")

-- Vimtex 
require("plugins.vimtex")

-- Copilot
-- require("plugins.copilot")

-- cmp
require("plugins.cmp")

-- nvim tree
require("plugins.nvim-tree")

-- which key
require("plugins.which-key")

-- Gitsigns 
require("plugins.gitsigns")

-- NvChad term
require("plugins.nvchad-term")

-- Markdown preview
require("plugins.markdown-preview")

-- Bufferline
require("bufferline").setup{}

-- Live servers
require("plugins.live-server")

-- Catppuccin theme 
require("plugins.catppuccin")

-- Alpha
require("plugins.alpha")
