require("lvim.lsp.manager").setup("clangd")
vim.opt.textwidth = 100

-- local formatters = require "lvim.lsp.null-ls.formatters"

-- formatters.setup({
--   {
--     name = "clang-format",
--     args = {
--       "--length=100",
--     },
--     filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" }
--   },
-- })
