-- vim.api.nvim_exec(
-- 	[[inoremap<silent><script><expr> <C-j> copilot#Accept("\<CR>") let g:copilot_no_tab_map = v:true ]],
-- 	false
-- )

-- vim.api.nvim_exec([[let g:copilot_no_tab_map = v:true ]], false)
-- vim.api.nvim_set_keymap("i", "<C-j>", "<cmd><expr> copilot#Accept('')<CR>", { silent = true, expr = true })
