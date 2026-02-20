local opt = vim.opt

opt.wrap = false
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.spell = true
opt.spelllang = "en_us"
opt.conceallevel = 1

-- Disable netrw for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

