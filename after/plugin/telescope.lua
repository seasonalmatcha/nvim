local ok, telescope = pcall(require, 'telescope')
if not ok then error(telescope) return end

local opts = { noremap = true, silent = true }
local keymap = function(mode, key, command)
  vim.api.nvim_set_keymap(mode, key, command, opts)
end

keymap('n', ';f', '<cmd>lua require("telescope.builtin").find_files()<CR>')
keymap('n', ';/', '<cmd>Telescope current_buffer_fuzzy_find<CR>')
keymap('n', ';b', '<cmd>Telescope buffers<CR>')
keymap('n', ';r', '<cmd>lua require("telescope.builtin").live_grep()<CR>')

local actions = require 'telescope.actions'

telescope.setup {
  defaults = {
    prompt_prefix = '  ',
    selection_caret = '  ',
    path_display = { 'smart' },

    mappings = {
      i = {
        ['<CR>'] = actions.select_default,
        ['<S-v>'] = actions.select_vertical,
      },
      n = {
        ['q'] = actions.close,
        ['<CR>'] = actions.select_default,
        ['<S-v>'] = actions.select_vertical,
        ['?'] = actions.which_key,
      }
    }
  },
  pickers = {
    buffers = {
      sort_lastused = true,
      mappings = {
        n = {
          ['<leader>d'] = 'delete_buffer',
        }
      }
    },
    find_files = {
      opts = { '--hidden', '--glob', '!.git/*', '!node_modules/*' },
    },
  }
}
