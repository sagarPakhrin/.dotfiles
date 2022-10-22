local expr_opts = { noremap = true, expr = true, silent = true }
local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- Better escape using jk in insert and terminal mode
map("i", "jk", "<ESC>", opts)
map("t", "jk", "<C-\\><C-n>", opts)

-- Center search results
map("n", "n", "nzz", opts)
map("n", "N", "Nzz", opts)

-- Visual line wraps
map("n", "k", "v:count == 0 ? 'gk' : 'k'", expr_opts)
map("n", "j", "v:count == 0 ? 'gj' : 'j'", expr_opts)

-- Better indent
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Paste over currently selected text without yanking it
map("v", "p", '"_dP', opts)

-- Switch buffer
map("n", "<S-h>", ":bprevious<CR>", opts)
map("n", "<S-l>", ":bnext<CR>", opts)

-- Cancel search highlighting with ESC
map("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", opts)

-- Move selected line / block of text in visual mode
map("x", "K", ":move '<-2<CR>gv-gv", opts)
map("x", "J", ":move '>+1<CR>gv-gv", opts)

-- Resizing panes
map("n", "<C-Left>", ":vertical resize +2<CR>", opts)
map("n", "<C-Right>", ":vertical resize -2<CR>", opts)
map("n", "<C-Up>", ":resize +2<CR>", opts)
map("n", "<C-Down>", ":resize -2<CR>", opts)

-- Normal --
-- Better window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

map("n", "<leader>ev", ":vsp ~/.config/nvim/init.lua<cr>", opts)
map("n", "<leader>sv", ":source $MYVIMRC<cr>", opts)
