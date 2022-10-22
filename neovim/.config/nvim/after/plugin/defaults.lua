-- :help options
local options = {
  termguicolors= true,
  backup = false,
  mouse = 'a',
  hlsearch = true,
  splitbelow = true,
  splitright = true,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  softtabstop = 2,
  textwidth = 120,
  smartcase = true,
  number = true,
  relativenumber = true,
  smartindent = true,
  breakindent = true,
  wrap = false,
  background = "dark",
  clipboard = "unnamedplus", -- Access system clipboard
  ignorecase = true, --Case insensitive searching unless /C or capital in search
  updatetime = 250, --Decrease update time
  signcolumn = "yes" -- Always show sign column
  -- undofile = true --Save undo history
}

for k, v in pairs(options) do
  vim.o[k] = v
end


-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]

