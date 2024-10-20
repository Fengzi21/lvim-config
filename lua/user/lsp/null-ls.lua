--ref: https://www.lunarvim.org/docs/master/configuration/language-features/linting-and-formatting
--ref: https://github.com/LoneExile/lvim/blob/main/lua/user/lsp/null-ls.lua
--ref: https://github.com/LunarVim/LunarVim/discussions/3875

local formatters = require "lvim.lsp.null-ls.formatters"

formatters.setup {
  {
    name = "prettier",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespace
    -- options such as `--line-width 80` become either `{"--line-width", "80"}` or `{"--line-width=80"}`
    args = {
      "--no-semi",
      "--single-quote",
      "--jsx-single-quote",
      "--print-width",
      "100",
      "--no-bracket-spacing",
    },
    -- filetypes = { "typescript", "typescriptreact", "json", "javascript" },
    disabled_filetypes = { "lua", "python", "fortran", "rust" },
  },
}
