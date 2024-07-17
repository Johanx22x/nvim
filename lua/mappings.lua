--[[
██╗░░██╗███████╗██╗░░░██╗██████╗░██╗███╗░░██╗██████╗░██╗███╗░░██╗░██████╗░░██████╗
██║░██╔╝██╔════╝╚██╗░██╔╝██╔══██╗██║████╗░██║██╔══██╗██║████╗░██║██╔════╝░██╔════╝
█████═╝░█████╗░░░╚████╔╝░██████╦╝██║██╔██╗██║██║░░██║██║██╔██╗██║██║░░██╗░╚█████╗░
██╔═██╗░██╔══╝░░░░╚██╔╝░░██╔══██╗██║██║╚████║██║░░██║██║██║╚████║██║░░╚██╗░╚═══██╗
██║░╚██╗███████╗░░░██║░░░██████╦╝██║██║░╚███║██████╔╝██║██║░╚███║╚██████╔╝██████╔╝
╚═╝░░╚═╝╚══════╝░░░╚═╝░░░╚═════╝░╚═╝╚═╝░░╚══╝╚═════╝░╚═╝╚═╝░░╚══╝░╚═════╝░╚═════╝░
]] --

local map = vim.api.nvim_set_keymap
local keyset = vim.keymap.set

local options = { noremap = true, silent = true }

-- Leader key
vim.g.mapleader = "\\"

-- Better window movement
map('n', '<C-h>', '<C-w>h', options)
map('n', '<C-j>', '<C-w>j', options)
map('n', '<C-k>', '<C-w>k', options)
map('n', '<C-l>', '<C-w>l', options)

-- Resize with arrows
-- map('n', '<Up>', ':resize -2<CR>', options)
-- map('n', '<Down>', ':resize +2<CR>', options)
-- map('n', '<Left>', ':vertical resize -2<CR>', options)
-- map('n', '<Right>', ':vertical resize +2<CR>', options)

-- Shift + tab switch buffers
map('n', '<S-Tab>', ':bnext<CR>', options)

-- Copy to system clipboard
map('v', '<C-c>', '"+y', options)

-- Nerd Tree toggle
-- keyset('n', '<leader>e', ':NERDTreeToggle<CR>', options)

-- Nvim tree toggle
keyset('n', '<leader>e', ':NvimTreeToggle<CR>', options)

-- Vimtex
keyset("n", "<leader>q", ":!zathura <C-r>=expand('%:r')<cr>.pdf &<cr>")
keyset("n", "<leader>l", ":VimtexCompile<cr>")
keyset("n", "<leader>ce", ":Copilot enable<cr>")
keyset("n", "<leader>cd", ":Copilot disable<cr>")

-- Live server
keyset("n", "<leader>ls", ":LiveServer <cr>")

-- NvChad terminal keybindings 
local fTerm = function ()
    require("nvterm.terminal").toggle "float"
end

local vTerm = function ()
    require("nvterm.terminal").toggle "vertical"
end

local hTerm = function ()
    require("nvterm.terminal").toggle "horizontal"
end

keyset("n", "<leader>tf", fTerm, {})
keyset("t", "<leader>tf", fTerm, {})
keyset("n", "<leader>tv", vTerm, {})
keyset("t", "<leader>tv", vTerm, {})
keyset("n", "<leader>th", hTerm, {})
keyset("t", "<leader>th", hTerm, {})

-- Which key
local wk = require("which-key")

wk.add({
    { "<leader>", group = "Leader" },
    { "<leader>c", desc = "Copilot" },
    { "<leader>cd", desc = "Disable" },
    { "<leader>ce", desc = "Enable" },
    { "<leader>e", desc = "Explorer" },
    { "<leader>l", desc = "Latex compile" },
    { "<leader>m", group = "Markdown preview" },
    { "<leader>q", desc = "Zathura" },
    { "<leader>t", group = "Treesitter, Themes and Terminal" },
    { "<leader>tf", desc = "Float terminal" },
    { "<leader>th", desc = "Horizontal terminal" },
    { "<leader>tm", desc = "Colorscheme" },
    { "<leader>tt", desc = "Treesitter" },
    { "<leader>tv", desc = "Vertical terminal" },
})
