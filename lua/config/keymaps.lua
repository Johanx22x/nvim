local map = vim.keymap.set

-- Window navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Buffer navigation
map("n", "<S-Tab>", "<cmd>bnext<CR>")

-- Copy to system clipboard
map("v", "<C-c>", '"+y')

-- Spell check auto-correct
map("i", "<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u")

-- NvimTree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Explorer" })

-- VimTeX / Zathura
map("n", "<leader>q", ":!zathura <C-r>=expand('%:r')<CR>.pdf &<CR>", { desc = "Zathura" })
map("n", "<leader>l", "<cmd>VimtexCompile<CR>", { desc = "LaTeX compile" })

-- Copilot
map("n", "<leader>ce", "<cmd>Copilot enable<CR>", { desc = "Enable" })
map("n", "<leader>cd", "<cmd>Copilot disable<CR>", { desc = "Disable" })

-- Live server
map("n", "<leader>ls", "<cmd>LiveServer<CR>", { desc = "Live server" })
