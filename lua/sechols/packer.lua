-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"
  use {
    "nvim-telescope/telescope.nvim", tag = "0.1.5",
    -- or                            , branch = "0.1.x",
    requires = { {"nvim-lua/plenary.nvim"} }
  }
  use {"nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"}}
  use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
  }
  use {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    requires = {
      {"williamboman/mason.nvim"},
      {"williamboman/mason-lspconfig.nvim"},
      {"neovim/nvim-lspconfig"},
      {"hrsh7th/nvim-cmp"},
      {"hrsh7th/cmp-nvim-lsp"},
      {"L3MON4D3/LuaSnip"},
    }
  }
  use ("windwp/nvim-autopairs")
  use {
    "windwp/nvim-ts-autotag",
    requires = {{"nvim-telescope/telescope.nvim"}}
  }
  use 'nvim-tree/nvim-web-devicons'
  use ("folke/neodev.nvim")
  use {"akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons"}

  use ("mfussenegger/nvim-dap")
  use ("~/yarnvim.nvim")
  use "Civitasv/cmake-tools.nvim"
  use "akinsho/toggleterm.nvim"

  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt=true }
  }
  use {
    'NeogitOrg/neogit',
    requires = {
      'nvim-lua/plenary.nvim', opt=false
    }
  }

  --Themes--
  use ("folke/tokyonight.nvim")
  use { "catppuccin/nvim", as = "catppuccin" }
  use({
    "rose-pine/neovim",
    as = "rose-pine",
    config = function()
      vim.cmd("colorscheme rose-pine")
    end
  })
end)
