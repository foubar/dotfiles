-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<F2>", "<cmd>qa!<cr>",      { desc = "exit" })
map("n", "<F3>", "<cmd>q<cr>",        { desc = "exit" })
map("n", "<F4>", "<cmd>tab ball<cr>", { desc = "open all buffers in tabs" })
map("n", "<F5>", "<cmd>bp<cr>",       { desc = "go to previous buffer" })
map("n", "<F6>", "<cmd>bn<cr>",       { desc = "go to next buffer" })
map("n", "<F7>", "<cmd>Neotree<cr>",     { desc = "Neotree" })
