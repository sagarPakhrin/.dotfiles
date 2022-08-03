local status_ok, buffline = pcall(require, "bufferline")
if not status_ok then
  return
end

buffline.setup({
  options = {
    numbers = "both",
    diagnostics = "nvim_lsp",
  }
})

local opts = { noremap = true, silent = true }

local map = vim.api.nvim_set_keymap

-- Normal --
map("n", "]b", ":BufferLineCycleNext<CR>", opts);
map("n", "[b", ":BufferLineCyclePrev<CR>", opts);
map("n", "gb", ":BufferLinePick<CR>", opts);
--
-- " These commands will move the current buffer backwards or forwards in the bufferline
-- nnoremap <silent><mymap> :BufferLineMoveNext<CR>
-- nnoremap <silent><mymap> :BufferLineMovePrev<CR>
--
-- " These commands will sort buffers by directory, language, or a custom criteria
-- nnoremap <silent>be :BufferLineSortByExtension<CR>
-- nnoremap <silent>bd :BufferLineSortByDirectory<CR>
-- nnoremap <silent><mymap> :lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>
--
