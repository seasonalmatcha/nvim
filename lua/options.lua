local options = {
  backup = false,
  cmdheight = 2,
  completeopt = { 'menuone', 'noselect' },
  conceallevel = 0,
  fileencoding = 'utf-8',
  hlsearch = true,
  mouse = 'a',
  pumheight = 10,
  showmode = false,
  showtabline = 2,
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  termguicolors = true,
  timeoutlen = 200,
  undofile = false,
  updatetime = 200,
  writebackup = false,
  expandtab = true,
  shiftwidth = 2,
 -- tabwidth = 2,
  cursorline = true,
  number = true,
  relativenumber = true,
  numberwidth = 4,
  signcolumn = 'yes',
  wrap = true,
  scrolloff = 8,
  sidescrolloff = 8,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.shortmess:append 'c'
vim.opt.clipboard:append { 'unnamedplus' }
vim.cmd 'set whichwrap+=<,>,[,],h,'
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]]
