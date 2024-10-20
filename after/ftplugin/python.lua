require("lvim.lsp.manager").setup("pyright")

-- set up formatter
local formatters = require("lvim.lsp.null-ls.formatters")

formatters.setup({
  {
    name = "blue", -- or black
    filetypes = { "python" },
    args = { "--fast", "--line-length", "120" },
  },
})
