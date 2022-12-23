local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'sumneko_lua',
  'tailwindcss'
})

-- lsp.nvim_workspace()

lsp.configure('sumneko_lua', {
  flags = {
    debounce_text_changes = 150,
  },
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
    },
  }
})

lsp.setup()

