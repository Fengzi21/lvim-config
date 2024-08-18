-- Whichkey Bindings --

local whichkey = lvim.builtin.which_key

-- ydict
whichkey.mappings["y"] = {
  name = "ydict",
  c = { "<cmd>Ydc<CR>", "Query words from cursor." },
  v = { "<cmd>Ydv<CR>", "Query words from selected." },
  d = { "<cmd>Yde<CR>", "Query words from input." },
}
