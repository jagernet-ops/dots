vim.opt.termguicolors = true
require("plugins")
require("remap")
require("lspinfo")
require("treesitter")
require("colors")
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.cmd[[colorscheme tokyonight-night]]
require('gitblame').setup({
  enabled = false,
})
require("autoclose").setup()
