local opts = { noremap = true, silent = true }
local keymap = function(mode, key, command)
  vim.api.nvim_set_keymap(mode, key, command, opts)
end

keymap('', '<space>', '<Nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

keymap('n', 'jk', '<esc>')
keymap('i', 'jk', '<esc>')
keymap('v', 'jk', '<esc>')
keymap('x', 'jk', '<esc>')
keymap('c', 'jk', '<esc>')
keymap('s', 'jk', '<esc>')
keymap('o', 'jk', '<esc>')

-- CLEAR SEARCH
keymap('n', '<leader>jk', ':nohl<cr>')

-- SAVE, DISCARD, QUIT
keymap('n', '<leader>w', ':w!<cr>')
keymap('n', '<leader>wq', ':wq!<cr>')
keymap('n', '<leader>q', ':q<cr>')
keymap('n', '<leader>qwe', ':q!<cr>')
keymap('i', '<C-s>', '<Esc> :w!<cr>')
keymap('n', '<C-s>', ':w!<cr>')

-- MOVE LINES UP / DOWN
keymap('i', '<A-j>', '<esc>:m .+<cr>==gi')
keymap('i', '<A-k>', '<esc>:m .-2<cr>==gi')
keymap('n', '<A-j>', ':m .+<cr>==')
keymap('n', '<A-k>', ':m .-2<cr>==')
keymap('v', '<A-j>', ":m '>+1<cr>gv=gv")
keymap('v', '<A-k>', ":m '<-2<cr>gv=gv")

-- INDENT USING TAB / S-TAB
keymap('n', '<Tab>', '>>')
keymap('n', '<S-Tab>', '<<')
keymap('v', '<Tab>', '>gv')
keymap('v', '<S-Tab>', '<gv')
keymap('i', '<Tab>', '<C-t>')
keymap('i', '<S-Tab>', '<C-d>')

-- BUFFERS
keymap('n', '<leader>d', ':bdelete<cr>')
keymap('n', '<leader>k', ':bnext<cr>')
keymap('n', '<leader>j', ':bprev<cr>')

-- MOTION IN INSERT MODE
keymap('i', '<C-h>', '<Left>')
keymap('i', '<C-j>', '<Down>')
keymap('i', '<C-k>', '<Up>')
keymap('i', '<C-l>', '<Right>')
keymap('i', '<A-o>', '<C-O>o')
keymap('i', '<A-O>', '<C-O>O')
keymap('i', '<C-A-l>', '<Esc>ea')
keymap('i', '<C-A-h>', '<Esc>bi')

-- FORMAT DOCUMENT
keymap('i', '<A-S-f>', '<Esc>:lua vim.lsp.buf.format()<Cr>i')
keymap('n', '<A-S-f>', ':lua vim.lsp.buf.format()<Cr>')

-- DUPLICATE LINES
keymap('i', '<C-d>', '<Esc><S-v>ypi')
keymap('n', '<C-d>', '<S-v>yp')
keymap('v', '<C-d>', 'y<S-p>')

keymap('n', 'dq', 'db')
keymap('i', '<leader><bs><bs>', '<C-W>')
keymap('i', '<A-BS>', '<Del>')
keymap('n', 'cq', 'cb')

-- SPLIT WINDOW
keymap('n', 'sv', ':split<cr>')
keymap('n', 'ss', ':vsplit<cr>')
keymap('n', 'sd', ':close<cr>')
keymap('n', 'sj', '<C-w>=')

-- MAP Alt+v TO Ctrl+v FOR VISUAL BLOCK
keymap('n', '<A-v>', '<C-v>')

-- REDO
keymap('n', '<S-u>', '<C-r>')
