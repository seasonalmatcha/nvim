local ok, bfl = pcall(require, 'bufferline')
if not ok then error(bfl) return end

bfl.setup {
  options = {
    separator_style = 'slant',
    always_show_bufferline = true,
    color_icons = true,
  },
}
