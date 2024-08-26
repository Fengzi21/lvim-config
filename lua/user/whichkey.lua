-- Whichkey Bindings --
-- ref: https://www.lunarvim.org/docs/configuration/keybindings#whichkey-bindings

local whichkey = lvim.builtin.which_key

-- add a space after group Plus icon
whichkey.setup.icons.group = lvim.icons.ui.Plus .. " "

-- ydict --
local ydict_mappings = {
  name = "YDict",
  c = { ":Ydc<CR>", "Query words from cursor." },
  v = { ":Ydv<CR>", "Query words from selected." },
  d = { ":Yde<CR>", "Query words from input." },
}
whichkey.mappings["y"] = ydict_mappings
whichkey.vmappings["y"] = ydict_mappings

-- toggleterm --
local toggleterm_mappings = {
  name = "Terminal",
  g = { ":lua _LAZYGIT_TOGGLE()<CR>", "Lazygit" },
  n = { ":lua _NODE_TOGGLE()<CR>", "Node" },
  u = { ":lua _NCDU_TOGGLE()<CR>", "NCDU" },
  t = { ":lua _HTOP_TOGGLE()<CR>", "Htop" },
  p = { ":lua _PYTHON_TOGGLE()<CR>", "Python" },
  i = { ":lua _IPYTHON_TOGGLE()<CR>", "IPython" },
  f = { ":ToggleTerm direction=float<CR>", "Float" },
  h = { ":ToggleTerm direction=horizontal<CR>", "Horizontal" },
  v = { ":ToggleTerm direction=vertical<CR>", "Vertical" },
  a = { ":ToggleTermToggleAll<CR>", "Toggle all terminal" },
  s = {
    name = "Send/Set",
    n = { ":ToggleTermSetName<CR>", "Set terminal name" },
    l = { ":ToggleTermSendCurrentLine 7<CR>", "Send current line to ipython" },
    v = { ":ToggleTermSendVisualLines 7<CR>", "Send visual lines to ipython" },
    b = { ":ToggleTermSendVisualSelection 7<CR>", "Send visually selected block to ipython" },
  },
}
whichkey.mappings["t"] = toggleterm_mappings
whichkey.vmappings["t"] = toggleterm_mappings

-- Markdown --
local markdown_mappings = {
  name = "Markdown",
  p = { ":MarkdownPreview<CR>", "Preview Markdown" },
  s = { ":MarkdownPreviewStop<CR>", "Stop Markdown Preview" },
  t = { ":MarkdownPreviewToggle<CR>", "Toggle Markdown Preview" },
  f = { ":Glow %<CR>", "Glow Preview File" },
  b = { ":Glow<CR>", "Glow Preview Current Buffer" },
}

whichkey.mappings["m"] = markdown_mappings
whichkey.vmappings["m"] = markdown_mappings

-- Repl --

local repl_mappings = {
  name = "Repl",
  o = { ":IronRepl<CR>", "Start a repl" },
  r = { ":IronRestart<CR>", "Restart the current repl" },
  f = { ":IronFocus<CR>", "Focus on the repl" },
  h = { ":IronHide<CR>", "Hide the repl window" },
  w = { ":IronWatch<CR>", "Send to repl after writing" },
  s = {
    name = "Send",
    e = { ":lua require('iron.core').send(nil, string.char(13))<CR>", "Carriage Return" },
    i = { ":lua require('iron.core').send(nil, string.char(03))<CR>", "Interrupt" },
    q = { ":lua require('iron.core').close_repl()<CR>", "Quit" },
    c = { ":lua require('iron.core').send(nil, string.char(12))<CR>", "Clear" },
    M = { ":lua require('iron.core').send_motion()<CR>", "Send motion" },
    v = { ":lua require('iron.core').visual_send()<CR>", "Send visual" },
    f = { ":lua require('iron.core').send_file()<CR>", "Send file" },
    l = { ":lua require('iron.core').send_line()<CR>", "Send line" },
    m = { ":lua require('iron.core').send_mark()<CR>", "Send mark" },
  },
  m = {
    name = "Mark",
    m = { ":lua require('iron.core').mark_motion()<CR>", "Mark motion" },
    v = { ":lua require('iron.core').mark_visual()<CR>", "Mark visual" },
    d = { ":lua require('iron.marks').drop_last()<CR>", "Mark drop" },
  },
}
whichkey.mappings["r"] = repl_mappings
whichkey.vmappings["r"] = repl_mappings
