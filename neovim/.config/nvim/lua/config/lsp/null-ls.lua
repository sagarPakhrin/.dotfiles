local null_ls = require("null-ls")

local M = {}

local builtins = null_ls.builtins

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local on_attach = function(client, bufnr)
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
        --
        vim.lsp.buf.formatting_sync()
        -- vim.lsp.buf.formatting_seq_sync()
      end,
    })
  end
end

function M.setup()
  null_ls.setup({
    debug = false,
    sources = {
      builtins.formatting.prettier.with({extra_args = { "--jsx-single-quote=false", "--tab-width=2"}}),
      builtins.formatting.stylua,
      builtins.diagnostics.eslint,
      builtins.completion.spell,
      builtins.code_actions.eslint,
    },
    on_attach = on_attach
  })
end

return M
