return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  config = function()
    local map = require("utils").map
    local bufferline = require("bufferline")

    bufferline.setup({
      options = {
        numbers = "ordinal",
        diagnostics = "nvim_lsp",
        diagnostics_update_in_insert = true,
        always_show_bufferline = false,
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            text_align = "center",
            separator = true,
          },
        },
      },
    })

    map("n", "<leader>t", "<cmd> BufferLineCloseOthers <cr>")
    map("n", "<tab>", "<cmd> BufferLineCycleNext <cr>")
    map("n", "<s-tab>", "<cmd> BufferLineCyclePrev <cr>")
  end,
}
