local ok, tree = pcall(require, 'nvim-tree')
if not ok then error(tree) return end

vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<cr>', { noremap = true, silent = true })

local config = require 'nvim-tree.config'

local tree_cb = config.nvim_tree_callback

tree.setup {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  ignore_ft_on_setup = {
    'startify',
    'dashboard',
    'alpha',
  },
  open_on_tab = false,
  hijack_cursor = false,
  update_cwd = true,
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
  system_open = {
    cmd = nil,
    args = {},
  },
  filters = {
    dotfiles = true,
    custom = {},
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
    show_on_dirs = true,
  },
  view = {
    width = 30,
    hide_root_folder = false,
    side = 'left',
    mappings = {
      custom_only = false,
      list = {
        { key = { 'l', '<Cr>', 'o' }, cb = tree_cb "edit" },
        { key = 'h', cb = tree_cb 'close_node' },
        { key = 'v', cb = tree_cb 'vsplit'},
      },
    },
    number = true,
    relativenumber = true,
  },
  trash = {
    cmd = 'trash',
    require_confirm = true,
  },
  renderer = {
    root_folder_modifier = ':t',
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          deleted = "",
          untracked = "U",
          ignored = "◌",
        },
        folder = {
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
        },
      },
    },
  },
}
