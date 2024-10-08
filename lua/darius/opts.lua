vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

vim.opt.cmdheight = 0
vim.opt.conceallevel= 0 
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.undofile = true
vim.opt.updatetime = 400

vim.opt.wrap = true

vim.opt.scrolloff = 12
vim.opt.sidescrolloff = 8

vim.opt.termguicolors = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4

-- remove ~ from empty lines in buffer
vim.opt.fillchars:append({ eob = ' ' })
-- better wrapping option
vim.cmd("set whichwrap+=<,>,[,],h,l")

