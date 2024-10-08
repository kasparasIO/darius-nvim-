return {
  {"hrsh7th/cmp-buffer"},
  {"hrsh7th/cmp-path"},

  {
    "hrsh7th/nvim-cmp",
    config = function()
      require("cmp").setup({
        expand = function (args)
          vim.snippet.expand(args.body)
        end,
        sources = require("cmp").config.sources({
          {name = "nvim_lsp"},
          {name = "lazydev", group_index = 0},
        }, {
            { name = "buffer" },
            { name = "path" }
          }),
        window = {
          completion = require("cmp").config.window.bordered(),
          documentation = require("cmp").config.window.bordered(),
        },

        mapping = require("cmp").mapping.preset.insert({
          ['<C-Space>'] = require("cmp").mapping.complete(),
          ["<CR>"] = require("cmp").mapping.confirm {
            behavior = require("cmp").ConfirmBehavior.Insert,
            select = true,
          },
        })
      })
    end
  }
}
