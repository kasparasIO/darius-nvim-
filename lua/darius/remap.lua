vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Yank to clipboard
vim.keymap.set("v", "<S-y>", '"+y', {desc = "Yank to plus register (clipboard)"})

-- remaping down and up for easier navigation in wrapped lines
vim.keymap.set('n', 'j', 'gj', { noremap = true, silent = true })
vim.keymap.set('n', 'k', 'gk', { noremap = true, silent = true })

-- move selected lines while holding alt
vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv")

