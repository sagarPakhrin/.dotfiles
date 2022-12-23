local status_ok, bufferline  = pcall(require, "bufferline")
if not status_ok then
  return
end

local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

map("n", "gb", ":BufferLinePick<cr>", opts)
map("n", "[b", ":bp<cr>", opts)
map("n", "]b", ":bn<cr>", opts)

bufferline.setup({
  options = {
    numbers = "none",
    diagnostics = "nvim_lsp",
    separator_style = "slant", -- or "padded_slant",
    show_tab_indicators = true,
    show_buffer_close_icons = false,
    show_close_icon = true,
  },
})
