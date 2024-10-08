local harpoon = require("harpoon")
harpoon:setup()

vim.keymap.set("n", "<leader>m", function() harpoon:list():add() end, { desc = "Mark item" });
vim.keymap.set("n", "<leader>ml", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
  { desc = "Show all Marked Items" })
vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Select 1st mark" })
vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Select 2nd mark" })
vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Select 3d mark" })
vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Select 4th mark" })

