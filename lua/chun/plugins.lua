local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'neovim/nvim-lspconfig' -- LSP
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'hrsh7th/nvim-cmp' -- Completion
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'L3MON4D3/LuaSnip'
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  use 'nvim-lualine/lualine.nvim' -- Statusline

  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }

  use 'onsails/lspkind-nvim' -- vscode-like pictograms


  use 'glepnir/lspsaga.nvim' -- LSP UIs

  -- use 'nvim-treesitter/playground'

  use 'kyazdani42/nvim-web-devicons' -- File icons

  use 'nvim-lua/plenary.nvim' -- telescope dependency
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use { 'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    }
  }

  use 'norcalli/nvim-colorizer.lua'
  -- use 'folke/zen-mode.nvim'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use 'akinsho/nvim-bufferline.lua'
  -- use 'github/copilot.vim'

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse

  use 'mattn/emmet-vim'

  use 'p00f/nvim-ts-rainbow'

end)
