local map = require("utils").map

vim.g.mapleader = " "

-- switch between windows
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")

-- line numbers
map("n", "<leader>n", "<cmd> set nu! <CR>")
map("n", "<leader>rn", "<cmd> set rnu! <CR>")

-- nvim tree
map("n", "<C-n>", "<cmd>NvimTreeToggle<cr>")
map("n", "<leader>e", "<cmd>NvimTreeFocus<cr>")

-- hop
map("n", "s", ":HopChar2<cr>")
map("n", "S", ":HopWord<cr>")

-- telescope
map("n", "<leader>ff", "<cmd> Telescope find_files <CR>")
map("n", "<leader>fa", "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>")
map("n", "<leader>fw", "<cmd> Telescope live_grep <CR>")

-- save file
map("n", "<leader>w", "<cmd>w!<CR>")
