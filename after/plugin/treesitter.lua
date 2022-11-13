local ok, configs = pcall(require, 'nvim-treesitter.configs')
if not ok then error(configs) return end

configs.setup {
  ensure_installed = {
    'css',
    'html',
    'javascript',
    'json',
    'scss',
    'tsx',
    'typescript',
    'vue',
    'yaml'
  },
  sync_install = false,
  ignore_install = { '' },
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true,
    disable = { '' },
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = 'yaml' },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  autotag = {
    enable = true,
  }
}
