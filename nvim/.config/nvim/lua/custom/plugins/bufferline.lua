-- using lazy.nvim
-- File: lua/custom/plugins/autopairs.lua
return {
  'akinsho/bufferline.nvim',
  version = '*',
  -- Optional dependency
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('bufferline').setup {}
  end,
}
