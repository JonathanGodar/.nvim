-- local nvim_tree_config = require "nvim-tree.config"

-- local nvim_tree_callback = nvim_tree_config.nvim_tree_callback

-- Replaces auto_close
-- vim.api.nvim_create_autocmd("BufEnter", {
--   nested = true,
--   callback = function()
--     if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
--       vim.cmd "quit"
--     end
--   end
-- })

require 'nvim-tree'.setup() 
