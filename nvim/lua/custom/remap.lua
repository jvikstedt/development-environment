vim.g.mapleader = " "
vim.keymap.set("n", "<C-c>", ":bp|bd #<CR>")

vim.keymap.set("n", "<C-left>", ":vertical resize -5<cr>")
vim.keymap.set("n", "<C-down>", ":resize +5<cr>")
vim.keymap.set("n", "<C-up>", ":resize -5<cr>")
vim.keymap.set("n", "<C-right>", ":vertical resize +5<cr>")
