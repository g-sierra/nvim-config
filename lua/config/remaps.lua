-- clear search highlights
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })

-- move lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in place when joining lines
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines"})

-- stay centered when moving around
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down"})
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up"})
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result"})
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result"})

-- split navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- quickfix navigation
vim.keymap.set("n", "<M-n>", "<cmd>cnext<CR>zz", { desc = "Next item in the quickfix list" })
vim.keymap.set("n", "<M-p>", "<cmd>cprev<CR>zz", { desc = "Previous item in the quickfix list" })

-- select all
vim.keymap.set("n", "<leader>a", "ggVG", { desc = "Select All" })

-- source
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<leader>x", ":.lua<CR>")
vim.keymap.set("v", "<leader>x", ":lua<CR>")

-- toggle word wrap
vim.keymap.set("n", "<leader>tw", "<cmd>set wrap!<CR>", { desc = "Toggle Word Wrap" })
