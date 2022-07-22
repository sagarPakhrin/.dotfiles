local status_ok, config = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

config.setup {
  ensure_installed = { "typescript", "lua", "javascript", "tsx", "vim" },
  sync_install = false,
  auto_install = true,
  autopairs = {
    enable = true
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
}
