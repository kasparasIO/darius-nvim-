local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {desc = "[F]ind [F]iles accross directories"})
vim.keymap.set("n", "<leader>fs", builtin.grep_string, {
  desc = "[F]ind [S]tring under your cursor or selection in your current working directory"}) 
