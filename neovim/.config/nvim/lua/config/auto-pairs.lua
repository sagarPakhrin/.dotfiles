local M = {}

function M.setup()
  local auto_pairs = require("nvim-autopairs")
  require('nvim-ts-autotag').setup()
  auto_pairs.setup()
end

return M

