lvim.plugins = {
  {
    "tanvirtin/monokai.nvim",
    config = function()
      require("monokai").setup({
        italics = false,
      })
    end,
  },
  {
    "xiyaowong/nvim-transparent",
    config = function()
      require("transparent").setup({
        -- table/string: additional groups that should be cleared
        extra_groups = {
          -- for akinsho/bufferline.lua
          "BufferLineTabClose",
          "BufferlineBufferSelected",
          "BufferLineFill",
          "BufferLineBackground",
          "BufferLineSeparator",
          "BufferLineIndicatorSelected",

          -- for Telescope
          "TelescopeMatching",
          "TelescopeSelection",
          "TelescopePromptTitle",
          "TelescopePromptPrefix",
          "TelescopePromptCounte",
          "TelescopePromptNormal",
          "TelescopePromptBorder",
          "TelescopeResultsTitle",
          "TelescopeResultsNormal",
          "TelescopeResultsBorder",
          "TelescopePreviewTitle",
          "TelescopePreviewNormal",
          "TelescopePreviewBorder",
        },
        exclude_groups = {}, -- table: groups you don't want to clear
      })
    end,
  },
  {
    "TimothyYe/vim-ydict",
    event = "VeryLazy",
  },
}
