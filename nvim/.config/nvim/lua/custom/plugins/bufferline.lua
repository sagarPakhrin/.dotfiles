-- using lazy.nvim
-- File: lua/custom/plugins/autopairs.lua
return {
  'akinsho/bufferline.nvim',
  version = '*',
  -- Optional dependency
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local map = vim.keymap.set
    local opts = { noremap = true, silent = true }
    require('bufferline').setup {}

    -- Keybindings
    map('n', 'gb', '<cmd>BufferLinePick<CR>', opts)
  end,
}
