local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

-- Install your plugins here
return packer.startup(function(use)

  -- My plugins here

  use({ "wbthomason/packer.nvim", }) -- Have packer manage itself
  use({ "nvim-lua/plenary.nvim", })
  --
  -- call plug#begin()
  --
  use({ 'tpope/vim-fugitive' })
  use({ 'tmhedberg/matchit' })
  use({ 'tpope/vim-surround' })
  use({ 'airblade/vim-gitgutter' })
  use({ 'lewis6991/gitsigns.nvim' })
  use({ 'easymotion/vim-easymotion' })
  use({ 'tomtom/tcomment_vim' })
  use({ "kyazdani42/nvim-tree.lua" })

  -- Autopairs
  -- use({ "windwp/nvim-autopairs" })
  use({ "jiangmiao/auto-pairs" })

  -- Colors and icons
  use({ "kyazdani42/nvim-web-devicons" })
  use({ 'shaunsingh/solarized.nvim' })
  use({ 'folke/tokyonight.nvim' })
  use({ 'morhetz/gruvbox' })

  -- buffers
  use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }

  -- LSP stuffs
  use({ 'neovim/nvim-lspconfig' }) -- Configurations for Nvim LSP
  use({ 'williamboman/nvim-lsp-installer' }) -- Configurations for Nvim LSP
  use({ 'nvim-treesitter/nvim-treesitter' })
  use({ 'nvim-telescope/telescope.nvim' })

  -- Linters and formatters
  use({ 'jose-elias-alvarez/null-ls.nvim' })
  use({ 'mfussenegger/nvim-lint' })

  -- Completion plugins
  use({ 'L3MON4D3/LuaSnip' })
  use({ 'saadparwaiz1/cmp_luasnip' })
  use({ "hrsh7th/nvim-cmp" }) -- The completion plugin
  use({ "hrsh7th/cmp-buffer" }) -- buffer completions
  use({ "hrsh7th/cmp-path" }) -- path completions
  use({ "hrsh7th/cmp-nvim-lsp" })
  use({ "hrsh7th/cmp-nvim-lua" })

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
