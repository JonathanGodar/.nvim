require 'user.plugins.packer_init'
require 'user.plugins.colorscheme'
require 'user.plugins.nvim-tree'

require 'user.plugins.which-key'
require 'user.plugins.cmp'
require 'user.plugins.treesitter'
require 'user.plugins.autopairs'
require 'user.plugins.leap'

-- Reload plugins when plugins.lua changes
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]
