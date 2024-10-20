require("lvim.lsp.manager").setup("fortls")

local formatters = require "lvim.lsp.null-ls.formatters"

formatters.setup({
  {
    name = "fprettify",
    args = {
      "--indent=2",
      "--whitespace=3",
      "--enable-decl",
    },
    filetypes = { "fortran" }
  },
})
