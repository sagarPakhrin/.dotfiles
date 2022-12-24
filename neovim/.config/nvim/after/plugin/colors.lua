--
-- function ColorMyPencils(color)
-- 	color = color or "onedark"
-- 	vim.cmd.colorscheme(color)
--
-- 	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- 	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--
-- end
--
-- ColorMyPencils()
local status_ok, _  = pcall(require, "onedark")
if not status_ok then
  return
end
vim.cmd.colorscheme('onedark')
