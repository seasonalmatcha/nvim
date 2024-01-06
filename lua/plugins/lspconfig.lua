local ensure_installed = {
  "lua-language-server",
  "dockerfile-language-server",
  "eslintd",
  "gopls",
  "prettierd",
  "prisma-language-server",
  "sqlls",
  "typescript-language-server",
  "golines",
  "goimports_reviser",
  "golines",
  "rust-analyzer",
  "emmet-language-server",
  "stylua",
}

return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()

      vim.api.nvim_create_user_command("MasonInstallAll", function()
        vim.cmd("MasonInstall " .. table.concat(ensure_installed, " "))
      end, {})

      vim.g.mason_binaries_list = ensure_installed
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local map = require("utils").map
      local lspconfig = require("lspconfig")

      local servers = {
        "tsserver",
        "prismals",
        "eslint",
        "dockerls",
        "tailwindcss",
        "emmet_language_server",
      }

      for _, server in ipairs(servers) do
        lspconfig[server].setup({
          init_options = {
            preferences = {
              disableSuggestions = true,
            },
          },
        })
      end

      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              library = {
                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
                [vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy"] = true,
              },
              maxPreload = 100000,
              preloadFileSize = 10000,
            },
          },
        },
      })

      local border = "rounded"
      require("lspconfig.ui.windows").default_options = {
        border = border,
      }

      vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
        border = border,
      })

      vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.hover, {
        border = border,
      })

      map("n", "gD", function()
        vim.lsp.buf.declaration()
      end)
      map("n", "gd", function()
        vim.lsp.buf.definition()
      end)
      map("n", "gi", function()
        vim.lsp.buf.implementation()
      end)
      map("n", "gr", function()
        vim.lsp.buf.references()
      end)
      map("n", "K", function()
        vim.lsp.buf.hover()
      end)
      map("n", "<leader>ls", function()
        vim.lsp.buf.signature_help()
      end)
      map("n", "<leader>D", function()
        vim.lsp.buf.type_definition()
      end)
      map("n", "<leader>ca", function()
        vim.lsp.buf.code_action()
      end)
      map("n", "[d", function()
        vim.diagnostic.goto_prev({ float = { border = "rounded" } })
      end)
      map("n", "]d", function()
        vim.diagnostic.goto_next({ float = { border = "rounded" } })
      end)
      map("n", "<leader>ra", function()
        vim.lsp.buf.rename()
      end)
      map("n", "<leader>lr", "<cmd> LspRestart <cr>")
    end,
  },
}
