-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    }
  }

  use {
    'akinsho/bufferline.nvim', 
    tag = "v2.*", 
    requires = 'kyazdani42/nvim-web-devicons'
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'hrsh7th/nvim-cmp'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'numToStr/Comment.nvim'

  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
  }

  use 'lukas-reineke/indent-blankline.nvim'
  use 'navarasu/onedark.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

require("nvim-tree").setup()
require("bufferline").setup()

require("indent_blankline").setup {
  show_current_context = true,
  show_current_context_start = true,
}

require('Comment').setup()
require('hop').setup()
require('telescope').setup()

require('onedark').load()
