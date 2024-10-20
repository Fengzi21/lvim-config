require("lvim.lsp.manager").setup("bashls")

local formatters = require "lvim.lsp.null-ls.formatters"

formatters.setup({
  {
    name = "beautysh",
    filetypes = { "bash", "csh", "ksh", "sh", "zsh" },
    args = { "$FILENAME" },
  },
})
