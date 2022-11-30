local ok, indent_line = pcall(require, 'indent_blankline')
if not ok then error(indent_line) return end

indent_line.setup {}

local opts = { noremap = true, silent = true }
local keymap = function(mode, key, command)
  vim.api.nvim_set_keymap(mode, key, command, opts)
end

keymap('n', '<leader>il', '<cmd>IndentBlanklineToggle<CR>')
