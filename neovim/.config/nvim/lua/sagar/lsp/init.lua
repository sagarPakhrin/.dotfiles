local status_ok,_ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require ("sagar.lsp.configs")
require ("sagar.lsp.null-ls")
