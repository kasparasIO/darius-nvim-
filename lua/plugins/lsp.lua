return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({})
    end
  },

  { "neovim/nvim-lspconfig" },
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      library = {
        { path = "luvit-meta/library", words = { "vim%.uv" } },
      },
    },
  },
  { "Bilal2453/luvit-meta", lazy = true },
  { "hrsh7th/cmp-nvim-lsp" },

  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "svelte", "eslint", "gopls", "pyright" }
      })
      require("mason-lspconfig").setup_handlers({
        --default handler
        function(server_name)
          require("lspconfig")[server_name].setup({
            capabilities = require('cmp_nvim_lsp').default_capabilities(),
            on_attach = function(_, bufnr)
              require("plugins.keymaps.lsp").set_lsp_keymaps(bufnr)
            end
          })
        end,
      })
    end
  }
}
