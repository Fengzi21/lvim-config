lvim.plugins = {
  -- Colorscheme --
  -- https://github.com/tanvirtin/monokai.nvim
  {
    "tanvirtin/monokai.nvim",
    config = function()
      require("monokai").setup({
        italics = false,
      })
    end,
  },

  -- Transparent --
  -- https://github.com/xiyaowong/transparent.nvim
  { "xiyaowong/nvim-transparent" },

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

  {
    "hrsh7th/cmp-emoji",
    config = function()
      require("cmp").setup({
        sources = {
          { name = "emoji" }
        }
      })
    end,
  },

  -- Markdown --
  -- https://github.com/iamcco/markdown-preview.nvim
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },

  -- https://github.com/ellisonleao/glow.nvim
  {
    "ellisonleao/glow.nvim",
    ft = { "markdown" }
  },

  -- Interactive Repl --
  -- https://github.com/Vigemus/iron.nvim
  { "Vigemus/iron.nvim" },

  -- Jupytext --
  -- https://github.com/GCBallesteros/jupytext.nvim
  {
    "GCBallesteros/jupytext.nvim",
    config = true,
    dependencies = {
      "kana/vim-textobj-user",
      "kana/vim-textobj-line",
      -- https://github.com/GCBallesteros/vim-textobj-hydrogen
      "GCBallesteros/vim-textobj-hydrogen",
    }
  },

  -- Python syntax highlighting --
  {
    "numirias/semshi",
    build = ":UpdateRemotePlugins",
    ft = { "python" },
  },
  {
    "vim-python/python-syntax",
    ft = { "python" },
  },

  -- CMP --
  --[[ Unused in  LunarVim
    -- cmp plugins for completion --
    { "hrsh7th/cmp-nvim-lua" })
    { "onsails/lspkind-nvim" })

    use({ "echasnovski/mini.nvim", version = "*" })
    use({ "moll/vim-bbye" })

  --]]

  -- LSP --
  {
    'nvimdev/lspsaga.nvim',
    config = true,
    dependencies = {
      'nvim-treesitter/nvim-treesitter', -- optional
      'nvim-tree/nvim-web-devicons',     -- optional
    },
  },

  -- UI --
  { "m4xshen/smartcolumn.nvim" },

  -- colorizer --
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        filetypes = {
          "*",                  -- Highlight all files, but customize some others.
          css = { css = true }, -- Enable parsing rgb(...) functions in css.
        }
      })
    end
  },

  -- Git --
  -- {
  --   "lewis6991/gitsigns.nvim",
  --   config = function()
  --     ---@diagnostic disable-next-line: redundant-parameter
  --     require("gitsigns").setup({
  --       signs = {
  --         add = { text = "┃" },
  --         change = { text = "┃" },
  --         delete = { text = "_" },
  --         topdelete = { text = "‾" },
  --         changedelete = { text = "~" },
  --         untracked = { text = "┆" },
  --       },
  --     })
  --   end
  -- },

  -- Telescope
  --[[ Unused in  LunarVim
  --]]

  { "nvim-lua/popup.nvim" },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "nvim-telescope/telescope-live-grep-args.nvim" },
    },
    config = function()
      require("telescope").load_extension("live_grep_args")
    end,
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make"
  },
  {
    "xiyaowong/telescope-emoji.nvim"
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim"
    },
  },
  {
    "nvim-telescope/telescope-media-files.nvim"
  },

  -- YDict --
  -- https://github.com/TimothyYe/vim-ydict
  {
    "TimothyYe/vim-ydict",
    event = "VeryLazy",
  },

  -- LaTeX --
  { "lervag/vimtex" },

  -- Mojo --
  {
    "igorgue/mojo.vim",
    ft = { "mojo", "🔥" }
  },
}
