-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymaps = vim.keymap
local opts = { noremap = true, silent = true }

keymaps.set("i", "jk", "<ESC>", opts)
keymaps.set("t", "jk", "<C-\\><C-n>", opts)
-- keymaps.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Diagnostic [e]rror " })
-- Test the current file
keymaps.set("n", "<leader>t", "<cmd>PlenaryBustedFile %<cr>", { desc = "Run [t]est file" })
