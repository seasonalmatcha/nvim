local ok, saga = pcall(require, 'lspsaga')
if not ok then error(saga) return end

saga.init_lsp_saga {
  server_filetype_map = {},
}

local opts = { noremap = true, silent = true }
local keymap = function(mode, key, command)
  vim.keymap.set(mode, key, command, opts)
end

keymap('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>')
keymap('n', '<C-k>', '<Cmd>Lspsaga diagnostic_jump_prev<CR>')
keymap('n', 'K', '<Cmd>Lspsaga hover_doc<CR>')
keymap('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>')
keymap('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>')
keymap('n', 'gr', '<Cmd>Lspsaga rename<CR>')
keymap('n', '<leader>.', '<Cmd>Lspsaga code_action<CR>')
