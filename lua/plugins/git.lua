return {
  "NeogitOrg/neogit",
  config = function ()
    local neogit = require("neogit")
    neogit.setup({})
    require("plugins.keymaps.git")
  end
}
