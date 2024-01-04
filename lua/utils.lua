local M = {}

M.map = function(mode, lhs, rhs, opts)
  vim.keymap.set(mode, lhs, rhs, opts or { silent = true })
end

return M
