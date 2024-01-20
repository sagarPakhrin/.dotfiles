local lua_globals = {}

local globals = require("config.globals")

for k, v in pairs(globals) do
  if type(v) == "function" then
    table.insert(lua_globals, k)
  end
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = lua_globals,
              },
            },
          },
        },
      },
    },
  },
}
