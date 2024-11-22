require("lvim.lsp.manager").setup("asm_lsp")

local formatters = require "lvim.lsp.null-ls.formatters"

formatters.setup({
  {
    name = "asmfmt",
    filetypes = { "s", "asm" }
  },
})
