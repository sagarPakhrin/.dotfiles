-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("t", "jk", "<C-\\><C-n>")
vim.keymap.set("n", "\\s", "s", {
  silent = true,
  noremap = true,
})
vim.keymap.set("n", "\\S", "S", {
  silent = true,
  noremap = true,
})
