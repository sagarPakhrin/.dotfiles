local bufferline = require("bufferline");
local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

map("n", "gb", ":BufferLinePick<cr>", opts)

bufferline.setup({
  options = {
    -- numbers = "none",
    diagnostics = "nvim_lsp",
    separator_style = "slant", -- or "padded_slant",
    show_tab_indicators = true,
    show_buffer_close_icons = false,
    show_close_icon = true,
  },
})
