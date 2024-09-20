-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny


-- Use Lspsaga breadcrumbs instead --
lvim.builtin.breadcrumbs.active = false


require("user.options")
require("user.plugins")
require("user.keymaps")
require("user.cmp")
require("user.lsp")
require("user.telescope-setup")
require("user.toggleterm")
require("user.alpha")
require("user.whichkey")
require("user.autocommands")
require("user.transparent")
require("user.colorscheme")
-- require("user.monokaipro")
require("user.iron")
require("user.jupytext")
require("user.smartcc")
require("user.vimtex")
require("user.glow")
