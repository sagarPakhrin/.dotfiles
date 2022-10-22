local M = {}

function M.setup()
  -- Indicate first time installation
  local packer_bootstrap = false

  -- packer.nvim configuration
  local conf = {
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

    -- Colorscheme
    use({
      "sainnhe/everforest",
      config = function()
        vim.cmd "colorscheme everforest"
      end,
    })

    use({ 
      "windwp/nvim-autopairs",
      config = function() 
        require("nvim-autopairs").setup {} 
      end
    })

    -- LSP stuffs
    use({ 
      'neovim/nvim-lspconfig',
      opt = true,
      event = "BufReadPre",
    }) 

    -- Configurations for Nvim LSP
    use({ 'williamboman/nvim-lsp-installer' }) -- Configurations for Nvim LSP
    use({ 
      'nvim-treesitter/nvim-treesitter',
      config = function() 
        require("config.nvim-tree")
      end
    })
    use({ 'nvim-telescope/telescope.nvim' })



    -- Easy motion
    use({ "easymotion/vim-easymotion" })
    use({ "andymass/vim-matchup" })

    use { "kyazdani42/nvim-web-devicons"}
    use { "kyazdani42/nvim-tree.lua"}



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
