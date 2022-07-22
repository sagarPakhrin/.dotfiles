local opts = { noremap = true, silent = true }

local map = vim.api.nvim_set_keymap

-- Normal --
-- Better window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Insert --
map("i", "jk", "<ESC>", opts)
map("i", "JK", "<ESC>", opts)

-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Left>", ":vertical -2<CR>", opts)
map("n", "<C-Right>", ":vertical +2<CR>", opts)

-- Split navigation
map("n", "<C-J>", "<C-W><C-J>", opts)
map("n", "<C-K>", "<C-W><C-K>", opts)
map("n", "<C-L>", "<C-W><C-L>", opts)
map("n", "<C-H>", "<C-W><C-H>", opts)


-- Visual --
-- Move text up and down
map("n", "<A-j>", ":m .+1<CR>==", opts)
map("n", "<A-k>", ":m .-2<CR>==", opts)
map("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

map("n", "<leader>ev", ":vsp ~/.config/nvim/init.lua<cr>", opts)
map("n", "<leader>sv", ":source ~/.config/nvim/init.lua<cr>", opts)


-- Mappings for tabs
map("n", "tn", ":tabnew<space>", opts)
map("n", "tk", ":tabnext<cr>", opts)
map("n", "tj", ":tabprev<cr>", opts)


map("i", "j;", "<esc>A", opts)

-- Stop highlighting until next search
map("n", "<leader><leader>h", "<cmd>noh<cr>", opts)
map("i", "<leader><leader>h", "<cmd>noh<cr>", opts)


-- Nvim tree
map("n", "<c-b>", "<cmd>NvimTreeToggle<cr>", opts)
map("n", "nt", "<cmd>NvimTreeToggle<cr>", opts)
