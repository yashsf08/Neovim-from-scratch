local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim"    -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim"  -- Useful lua functions used ny lots of plugins
  use "windwp/nvim-autopairs"  -- Autopairs, integrates with both cmp and treesitter
  use "numToStr/Comment.nvim"  -- Easily comment stuff
  use "kyazdani42/nvim-web-devicons"
  use "kyazdani42/nvim-tree.lua"



  use "akinsho/bufferline.nvim"
  use "nanozuki/tabby.nvim"

  use "moll/vim-bbye"
  use "nvim-lualine/lualine.nvim"
  use 'feline-nvim/feline.nvim'
  use "akinsho/toggleterm.nvim"
  use "ahmedkhalf/project.nvim"
  use "lewis6991/impatient.nvim"
  use "lukas-reineke/indent-blankline.nvim"
  use "goolord/alpha-nvim"
  use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight


  -- which key config
  use {"folke/which-key.nvim", requires = "echasnovski/mini.nvim" }

  -- Colorschemes
  -- use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out
  use "lunarvim/darkplus.nvim"
  use "pineapplegiant/spaceduck"
  use "morhetz/gruvbox"
  use "matsuuu/pinkmare"
  use 'folke/tokyonight.nvim'
  use "EdenEast/nightfox.nvim" -- Packer
  use 'navarasu/onedark.nvim'
  use 'ishan9299/nvim-solarized-lua'
  use 'Mofiqul/dracula.nvim'
  use "rebelot/kanagawa.nvim"

  -- cmp plugins
  use "hrsh7th/nvim-cmp"         -- The completion plugin
  use "hrsh7th/cmp-buffer"       -- buffer completions
  use "hrsh7th/cmp-path"         -- path completions
  use "hrsh7th/cmp-cmdline"      -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"

  -- File comparision
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- snippets
  use "L3MON4D3/LuaSnip"             --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig"           -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "tamago324/nlsp-settings.nvim"    -- language server settings defined in json for
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

  -- Telescope
  use "nvim-telescope/telescope.nvim"

  -- nvim-ts-rainbow -- Adding rainbow bracket extension for treesitter (treesitter.lua)
  use "p00f/nvim-ts-rainbow"

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "JoosepAlviste/nvim-ts-context-commentstring"

  -- Git
  use "lewis6991/gitsigns.nvim"

  ------------- MY PLUGINS -----------------------------
  -- Surround Plugins
  -- use "machakann/vim-sandwich"

  -- Lua
  use {
    "abecodes/tabout.nvim",
    wants = { 'nvim-treesitter' }, -- or require if not used so far
    after = { 'nvim-cmp' }       -- if a completion plugin is using tabs load it before
    --[[ after = {"completion-nvim"} ]]
  }

  -- orgmode

  use {
    'nvim-orgmode/orgmode',
    ft = { 'org' },
    config = function()
      require('orgmode').setup {}
    end
  }

  -- AI Assistence
  -- Remove the `use` here if you're using folke/lazy.nvim.
  use {
    "Exafunction/codeium.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    --[[ config = function() ]]
    --[[   -- Change '<C-g>' here to any keycode you like. ]]
    --[[   vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true }) ]]
    --[[   vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, ]]
    --[[     { expr = true, silent = true }) ]]
    --[[   vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, ]]
    --[[     { expr = true, silent = true }) ]]
    --[[   vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true }) ]]
    --[[ end ]]
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
