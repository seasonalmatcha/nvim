local ok, trouble = pcall(require, 'trouble')

if not ok then error(trouble) return end

trouble.setup()

local opts = { noremap = true, silent = true }
local keymap = function(mode, key, command)
  vim.api.nvim_set_keymap(mode, key, command, opts)
end

keymap('n', '<leader>xx', '<cmd>TroubleToggle<cr>')
