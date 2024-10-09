vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight text after yanking",
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.notify = function(msg, log_level, _)
  if log_level == vim.log.levels.ERROR then
    return
  end
end
