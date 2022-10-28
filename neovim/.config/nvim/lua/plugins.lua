local M = {}

function M.setup()
  -- Indicate first time installation
  local packer_bootstrap = false

  -- packer.nvim configuration
  local conf = {
    profile = {
      enable = true,
      threshold = 0, -- the amount in ms that a plugins load time must be over for it to be included in the profile
    },
    display = {
      open_fn = function()
        return require("packer.util").float { border = "rounded" }
      end,
    },
  }

  -- Check if packer.nvim is installed
  -- Run PackerCompile if there are changes in this file
  local function packer_init()
    local fn = vim.fn
    local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
      packer_bootstrap = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
      }
      vim.cmd [[packadd packer.nvim]]
    end
    vim.cmd "autocmd BufWritePost plugins.lua source <afile> | PackerCompile"
  end

  -- Plugins
  local function plugins(use)
    use({ "wbthomason/packer.nvim" })
    use({ "nvim-lua/plenary.nvim", module = "plenary" })

    use({
      'nvim-treesitter/nvim-treesitter',
      config = function()
        require("config.treesitter")
      end
    })

    -- Colorscheme

    use({
      "folke/tokyonight.nvim",
      config = function()
        vim.cmd "colorscheme tokyonight"
      end,
    })

    use({
      "windwp/nvim-autopairs",
      -- wants = { "windwp/nvim-ts-autotag" },
      requires = {
        "windwp/nvim-ts-autotag",
      },
      config = function()
        require("config.auto-pairs").setup()
      end
    })


    -- Easy motion
    use({ "easymotion/vim-easymotion" })
    use({ "andymass/vim-matchup" })

    -- Git
    use({ 'tpope/vim-fugitive' })
    use({ 'tpope/vim-surround' })
    use({ 'airblade/vim-gitgutter' })
    use({ 'lewis6991/gitsigns.nvim' })
    use({ 'tomtom/tcomment_vim' })


    -- LSP stuffs
    use({
      'neovim/nvim-lspconfig',
      opt = true,
      event = "BufReadPre",
      config = function()
        require("config.lsp")
      end
    })
    -- formatters and linters
    use({
      'jose-elias-alvarez/null-ls.nvim',
      config = function()
        require("config.lsp.null-ls").setup()
      end
    })


    use({
      "williamboman/mason.nvim",
      config = function()
        require("config.manson")
      end
    })

    -- TODO: setup lsp,mason and mason-lspconfig all together
    -- use({
    --   "williamboman/mason.nvim",
    --   "williamboman/mason-lspconfig.nvim",
    --   "neovim/nvim-lspconfig",
    -- })

    -- telescope
    use({
      'nvim-telescope/telescope.nvim',
      config = function()
        require("config.telescope")
      end
    })


    -- Completion plugins
    use({
      "hrsh7th/nvim-cmp",
      event = "InsertEnter",
      opt = true,
      config = function()
        require("config.cmp")
      end,
      wants = { "LuaSnip" },
      requires = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-nvim-lsp",
        "ray-x/cmp-treesitter",
        "hrsh7th/cmp-cmdline",
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-calc",
        "f3fora/cmp-spell",
        "hrsh7th/cmp-emoji",
        {
          "L3MON4D3/LuaSnip",
          wants = "friendly-snippets",
          config = function()
            require("config.luasnip").setup()
          end,
        },
        "rafamadriz/friendly-snippets",
        disable = false,
      },
    })

    use { "kyazdani42/nvim-web-devicons" }
    use({ "kyazdani42/nvim-tree.lua",
      config = function()
        require("config.nvim-tree")
      end
    })

    -- Buffer line
    use({
      "akinsho/nvim-bufferline.lua",
      event = "BufReadPre",
      wants = "nvim-web-devicons",
      config = function()
        require("config.bufferline")
      end,
    })



    if packer_bootstrap then
      print "Restart Neovim required after installation!"
      require("packer").sync()
    end
  end

  packer_init()

  local packer = require "packer"
  packer.init(conf)
  packer.startup(plugins)
end

return M
