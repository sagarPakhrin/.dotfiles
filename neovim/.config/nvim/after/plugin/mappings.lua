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

-- -- Move text up and down
-- map("n", "nt", ":NERDTree<cr>", opts)
  
-- map("n", "<space>f", ":Files<cr>", opts)
--
--
-- -- " LSP config (the mappings used in the default file don't quite work right)
-- -- nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
-- -- nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
-- -- nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
-- -- nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
-- -- nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
-- -- nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
-- -- nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
-- -- nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
--
--
-- map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
-- map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
-- map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
-- map("n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
-- map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
-- map("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
-- vim.cmd [[ command! Format execute 'lua vim.lsp.buf.format({ async = true })' ]]
-- map("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
--
--
