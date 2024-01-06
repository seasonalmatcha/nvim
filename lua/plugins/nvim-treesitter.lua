return {
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua",
          "typescript",
          "html",
          "javascript",
          "tsx",
          "json",
          "prisma",
          "sql",
          "go",
          "gomod",
          "gosum",
          "css",
          "proto",
          "make",
          "markdown",
          "rust",
          "toml",
          "vimdoc",
          "xml",
          "yaml",
        },
        highlight = {
          enable = true,
          use_languagetree = true,
        },
        indent = { enable = true },
        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              ["af"] = "@function.outer",
              ["if"] = "@function.inner",
              ["ac"] = "@class.outer",
              ["ic"] = "@class.inner",
              ["ap"] = "@parameter.outer",
              ["ip"] = "@parameter.inner",
              ["ia"] = "@assignment.inner",
              ["aa"] = "@assignment.outer",
              ["it"] = "@attribute.inner",
              ["at"] = "@attribute.outer",
            },
          },
        },
      })
    end,
  },
}
