local ok, presence = pcall(require, 'presence')
if not ok then error(presence) return end

presence:setup({
  -- General options
  auto_update        = true,
  neovim_image_text  = "The One True Text Editor",
  main_image         = "neovim",
  client_id          = "793271441293967371",
  log_level          = nil,
  debounce_timeout   = 10,
  enable_line_number = false,
  blacklist          = {},
  buttons            = true,
  file_assets        = {},
  show_time          = true,

  -- Rich Presence text options
  editing_text        = 'Editing 📝',
  file_explorer_text  = 'Browsing 📂',
  git_commit_text     = 'Committing changes 📑',
  plugin_manager_text = 'Managing plugins 🔨',
  reading_text        = 'Reading 📖',
  workspace_text      = 'Working 💼',
  line_number_text    = 'Line %s out of %s',
})
