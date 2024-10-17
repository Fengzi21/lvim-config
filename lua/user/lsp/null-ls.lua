--ref: https://www.lunarvim.org/docs/master/configuration/language-features/linting-and-formatting
--ref: https://github.com/LoneExile/lvim/blob/main/lua/user/lsp/null-ls.lua
--ref: https://github.com/LunarVim/LunarVim/discussions/3875

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettier",
    extra_args = {
      "--no-semi",
      "--single-quote",
      "--jsx-single-quote",
      "--print-width",
      "80",
      "--use-tabs",
      "--no-bracket-spacing",
      -- "--config",
      -- "./Path"
    },
    filetypes = { "typescript", "typescriptreact", "json", "javascript" },
    disabled_filetypes = { "lua", "python" },
    extra_filetypes = { "toml" },
  },
  {
    command = "blue",
    filetypes = { "python" },
    extra_args = { "--fast", "--line-length", "120" },
  },
  {
    command = "beautysh",
    filetypes = { "bash", "csh", "ksh", "sh", "zsh" },
    extra_args = { "$FILENAME" },
  },
  { command = "markdownlint", filetypes = { "markdown" } },
  {
    command = "fprettify",
    extra_args = {
      "--indent=2",
      "--whitespace=3",
      "--enable-decl",
    },
  },

  -- { name = "black" },
  -- {
  --   name = "prettier",
  --   ---@usage arguments to pass to the formatter
  --   -- these cannot contain whitespace
  --   -- options such as `--line-width 80` become either `{"--line-width", "80"}` or `{"--line-width=80"}`
  --   args = { "--print-width", "100" },
  --   ---@usage only start in these filetypes, by default it will attach to all filetypes it supports
  --   filetypes = { "typescript", "typescriptreact" },
  -- },
}

-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { name = "flake8" },
--   {
--     name = "shellcheck",
--     args = { "--severity", "warning" },
--   },
-- }

-- local code_actions = require "lvim.lsp.null-ls.code_actions"
-- code_actions.setup {
--   {
--     name = "proselint",
--   },
-- }
