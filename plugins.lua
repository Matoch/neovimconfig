local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  use 'airblade/vim-gitgutter'
  use {'autozimu/LanguageClient-neovim', branch='next', run='bash install.sh'}
  use 'frazrepo/vim-rainbow'
  use 'gruvbox-community/gruvbox'
  use 'junegunn/fzf'
  use 'machakann/vim-highlightedyank'
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
  use {'nvim-treesitter/nvim-treesitter', run=':TSUpdate'}
  use {'nvim-treesitter/playground'}
  use 'sk1418/join'
  use 'ThePrimeagen/harpoon'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'numToStr/Comment.nvim'
  use 'matoch/copymode.nvim'
  use 'wbthomason/packer.nvim'
  if packer_bootstrap then
    require('packer').sync()
  end
end)
