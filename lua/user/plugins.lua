lvim.plugins = {
  -- https://github.com/tanvirtin/monokai.nvim
  {
    "tanvirtin/monokai.nvim",
    config = function()
      require("monokai").setup({
        italics = false,
      })
    end,
  },

  -- https://github.com/xiyaowong/transparent.nvim
  { "xiyaowong/nvim-transparent" },

  -- https://github.com/TimothyYe/vim-ydict
  {
    "TimothyYe/vim-ydict",
    event = "VeryLazy",
  },

  -- for LaTeX --
  { "lervag/vimtex" },

  -- for Mojo --
  { "igorgue/mojo.vim" },

  -- Emoji --
  { "stevearc/dressing.nvim" }, -- improve the default vim.ui interfaces
  {
    "ziontee113/icon-picker.nvim",
    config = function()
      require("icon-picker").setup({
        disable_legacy_commands = true,
      })
    end,
  },

  -- Markdown --
  { "hrsh7th/cmp-emoji" }, -- Markdown emoji

  -- https://github.com/iamcco/markdown-preview.nvim
  {
    "iamcco/markdown-preview.nvim",
    -- cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    -- build = "cd app && yarn install",
    -- build = function()
    --   vim.g.mkdp_filetypes = { "markdown" }
    -- end,
    -- ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },

  -- https://github.com/ellisonleao/glow.nvim
  { "ellisonleao/glow.nvim" },

  -- -- Interactive Repl --
  -- https://github.com/Vigemus/iron.nvim
  { "Vigemus/iron.nvim" },

  -- -- Jupyter support --
  -- { "kana/vim-textobj-user" },
  -- { "kana/vim-textobj-line" },
  -- { "GCBallesteros/vim-textobj-hydrogen" },

  -- -- https://github.com/GCBallesteros/jupytext.nvim
  -- { "GCBallesteros/jupytext.vim" }, -- form from 'goerz/jupytext.vim'

}
