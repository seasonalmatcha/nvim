require 'options'
require 'keymaps'
require 'plugins'

local is_wsl = vim.fn.has 'wsl' ~= 0

if is_wsl then
  vim.cmd [[
   let g:clipboard = {
      \   'name': 'wslclipboard',
      \   'copy': {
      \      '+': 'win32yank.exe -i --crlf',
      \      '*': 'win32yank.exe -i --crlf',
      \    },
      \   'paste': {
      \      '+': 'win32yank.exe -o --lf',
      \      '*': 'win32yank.exe -o --lf',
      \   },
      \   'cache_enabled': 1,
      \ }
  ]]
end
