local ok, mason = pcall(require, 'mason')
if not ok then error(mason) return end

local ok2, mason_lspconfig = pcall(require, 'mason-lspconfig')
if not ok2 then error(mason_lspconfig) return end

local ok3, mason_nl = pcall(require, 'mason-null-ls')
if not ok3 then error(mason_nl) return end

mason.setup{
 ui = {
    icons = {
      package_installed = '✓',
      package_pending = '➜',
      package_uninstalled = '✗',
    },
  },
}

mason_lspconfig.setup{
  ensure_installed = {
    'cssls',
    'dockerls',
    'html',
    'jsonls',
    'tsserver',
    'sumneko_lua',
    'tailwindcss',
    'volar',
    'yamlls'
  },
  automatic_installation = true,
}

mason_nl.setup({
  ensure_installed = {
    'eslint_d',
    'prettierd',
    'stylua',
  },
})
