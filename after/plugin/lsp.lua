local ok, nvim_lsp = pcall(require, 'lspconfig')
if not ok then error(nvim_lsp) return end

local on_attach = function(client)
  if client.name == 'tsserver' then
    client.server_capabilities.documentFormattingProvider = false
  end
end

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
}

nvim_lsp.sumneko_lua.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file('', true),
        checkThirdParty = false,
      },
    },
  },
}
