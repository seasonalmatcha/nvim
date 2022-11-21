local opts = { noremap = true, silent = true }
local keymap = function(mode, key, command)
  vim.api.nvim_set_keymap(mode, key, command, opts)
end

keymap('n', '<leader>il', '<cmd>IndentLinesToggle<CR>')
