local neogit = require("neogit")
vim.keymap.set("n", "<leader>go", neogit.open, {desc = "[G]it interface [O]pen"})
