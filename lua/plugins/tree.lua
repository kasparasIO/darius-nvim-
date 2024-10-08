return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    require("neo-tree").setup({
      filesystem = {
        hijack_netrw_behavior = "open_current"
      },
      window = {
        position = "right",
        width = 28
      }
    })
    require("plugins.keymaps.tree")
  end
}

