return { 
  "nvim-treesitter/nvim-treesitter",
  config = function ()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {"typescript", "javascript", "html", "css", "svelte", "python", "go"},
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true
      },
      sync_install = true,
      auto_install = true
    })
  end
}
