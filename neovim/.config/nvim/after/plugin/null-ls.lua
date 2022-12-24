local null_ls = require("null-ls")

  local builtins = null_ls.builtins

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local on_attach = function(client, bufnr)
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()

        -- this is not working, client.name is null-ls 
        -- if client.name == "tsserver" then
          vim.lsp.buf.execute_command({ 
            command = "_typescript.organizeImports",
            arguments = {vim.api.nvim_buf_get_name(0)}, 
          })
        -- end

        vim.lsp.buf.format()
      end,
    })
  end
end

null_ls.setup({
  debug = false,
  sources = {
    builtins.formatting.prettier,
    builtins.formatting.stylua,
    builtins.diagnostics.eslint,
    builtins.completion.spell,
    builtins.code_actions.eslint,
  },
  on_attach = on_attach
})
