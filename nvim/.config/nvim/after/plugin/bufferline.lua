local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

map("n", "gb", ":BufferLinePick<cr>", opts)
map("n", "[b", ":bp<cr>", opts)
map("n", "]b", ":bn<cr>", opts)
map("n", "<leader>bp", ":BufferLineTogglePin<cr>", opts)
