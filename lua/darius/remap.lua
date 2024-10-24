vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Yank to clipboard
vim.keymap.set("v", "<S-y>", '"+y', { desc = "Yank to plus register (clipboard)" })

-- remaping down and up for easier navigation in wrapped lines
vim.keymap.set('n', 'j', 'gj', { noremap = true, silent = true })
vim.keymap.set('n', 'k', 'gk', { noremap = true, silent = true })

-- move selected lines while holding alt
vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<leader>s", function() vim.cmd("vsplit") end, { desc = "[S]plit window to the right" })
vim.keymap.set("n", "<leader>hs", function() vim.cmd("split") end, { desc = "[H]orizontally [S]plit window" })

vim.keymap.set("n", "<M-k>", ":resize +2<CR>", { desc = "Increase split height", noremap = true, silent = true  })
vim.keymap.set("n", "<M-j>", ":resize -2<CR>", { desc = "Decrease split height",noremap = true, silent = true   })
vim.keymap.set("n", "<M-h>", ":vertical resize -2<CR>", { desc = "Decrease split width", noremap = true, silent = true  })
vim.keymap.set("n", "<M-l>", ":vertical resize +2<CR>", { desc = "Increase split width", noremap = true, silent = true  })
