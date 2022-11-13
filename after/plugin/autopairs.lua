local ok, ap = pcall(require, 'nvim-autopairs')
if not ok then error(ap) return end

ap.setup {
  check_ts = true,
  ts_config = {
    lua = { 'string', 'source' },
    javascript = { 'string', 'template_string' },
  },
  disable_filetype = { 'TelescopePrompt', 'spectre_panel' },
  fast_wrap = {
    map = '<M-e>',
    chars = { '{', '[', '(', '"', "'" },
    pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], '%s+', ''),
    offset = 0,
    end_key = '$',
    keys = 'qwertyuiopasdfghjklzxcvbnm',
    check_comma = true,
    highlight = 'PmenuSel',
    highlight_grey = 'LineNr',
  },
}

local ok2, cmp = pcall(require, 'cmp')
if not ok2 then return end

local cmp_ap = require 'nvim-autopairs.completion.cmp'
cmp.event:on('confirm_done', cmp_ap.on_confirm_done { map_char = { tex = '' } })
