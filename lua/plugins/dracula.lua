return {
  'dracula/vim',
  name = "dracula",
  lazy = false,
  priority = 1000,
  options = {
    colorscheme_bg = "dark"
  },
  config = function ()   
    --setting the color scheme for dracula
    vim.cmd("colorscheme dracula")
    -- Making sure the background color appears
    vim.cmd([[highlight Normal guibg=NONE ctermbg=NONE]])
  end
}

