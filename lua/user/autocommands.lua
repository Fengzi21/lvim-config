-- Set wrap and spell in markdown and gitcommit
vim.api.nvim_create_autocmd(
  { "FileType" },
  {
    pattern = { "gitcommit", "markdown" },
    callback = function()
      vim.opt_local.wrap = true
      vim.opt_local.spell = true
    end,
  }
)

vim.cmd("autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif")

-- Fixes Autocomment
vim.api.nvim_create_autocmd(
  { "BufWinEnter" },
  {
    callback = function()
      vim.cmd("set formatoptions-=cro")
    end,
  }
)
