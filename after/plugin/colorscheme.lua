local colorscheme = 'onedark'

local ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)
if not ok then error(_) return end
