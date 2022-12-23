local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'sumneko_lua',
  'tailwindcss'
})

-- lsp.nvim_workspace()

lsp.setup()