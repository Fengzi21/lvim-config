-- NeoVim mappings --
-- ref: https://www.lunarvim.org/docs/configuration/keybindings#neovim-mappings

local modes = {
  n = lvim.keys.normal_mode,
  i = lvim.keys.insert_mode,
  v = lvim.keys.visual_mode,
  x = lvim.keys.visual_block_mode,
  t = lvim.keys.term_mode,
  c = lvim.keys.command_mode,
}

local rtn = {
  n = '',
  v = "<C-\\><C-N>",
  x = "<C-\\><C-N>",
  i = "<C-\\><C-N>",
  c = "<C-\\><C-N>",
  t = "<C-\\><C-N>",
}

-- Return to normal mode --
-- <C-\><C-N> works in all modes and performs better
-- ref: https://github.com/neovim/neovim/issues/7648
for _, m in pairs({ 'i', 'v', 'x', 't', 'c' }) do
  modes[m]["<Esc>"] = rtn[m]
  -- Press jk quickly
  if m == 'i' or m == 'c' or m == 't' then
    modes[m]["jk"] = rtn[m]
  end
end

-- Better window navigation --
for _, m in pairs({ 'n', 'v', 'x', 'i', 't' }) do
  -- Navigate --
  modes[m]["<C-h>"] = rtn[m] .. "<C-w>h"
  modes[m]["<C-j>"] = rtn[m] .. "<C-w>j"
  modes[m]["<C-k>"] = rtn[m] .. "<C-w>k"
  modes[m]["<C-l>"] = rtn[m] .. "<C-w>l"
  -- Close --
  if m ~= 'i' then
    modes[m]["<C-q>"] = rtn[m] .. ":quit<CR>"
  end
end

-- Resize --
for _, m in pairs({ 'n', 'v', 'x', 'i', 'c', 't' }) do
  -- Resize with arrows --
  modes[m]["<C-Up>"] = rtn[m] .. ":resize +2<CR>"
  modes[m]["<C-Down>"] = rtn[m] .. ":resize -2<CR>"
  modes[m]["<C-Left>"] = rtn[m] .. ":vertical resize -2<CR>"
  modes[m]["<C-Right>"] = rtn[m] .. ":vertical resize +2<CR>"
  -- Toggle fullscreen --
  modes[m]["<C-f>"] = rtn[m] .. ":tab split<CR>"
  modes[m]["<C-b>"] = rtn[m] .. ":tab close<CR>"
end

-- Buffers --
for _, m in pairs({ 'n', 'v', 'x' }) do
  -- Navigate --
  modes[m]["<S-l>"] = rtn[m] .. ":bnext<CR>"
  modes[m]["<S-h>"] = rtn[m] .. ":bprevious<CR>"
  -- Close --
  modes[m]["<S-q>"] = rtn[m] .. ":Bdelete!<CR>"
end

-- Save and Move lines --
for _, m in pairs({ 'n', 'v', 'x', 'i' }) do
  -- Quick save --
  modes[m]["<C-s>"] = rtn[m] .. ":w!<CR>"

  -- Move lines up and down --
  local up_cmd, down_cmd
  if m == 'n' or m == 'i' then
    local _rtn = m == 'i' and "<C-\\><C-N>" or ''
    up_cmd = _rtn .. ":move .-2<CR>=="
    down_cmd = _rtn .. ":move .+1<CR>=="
  else
    up_cmd = ":move '<-2<CR>gv-gv"
    down_cmd = ":move '>+1<CR>gv-gv"
  end
  modes[m]["<A-j>"] = down_cmd
  modes[m]["<A-k>"] = up_cmd
  modes[m]["<A-Down>"] = down_cmd
  modes[m]["<A-Up>"] = up_cmd
end

-- Better paste --
modes['v']["p"] = '"_dP'
modes['x']["p"] = '"_dP'

-- Stay in indent mode --
modes['v']["<"] = "<gv"
modes['v'][">"] = ">gv"

-- Comment --
-- ref: https://github.com/numToStr/Comment.nvim
local toggle_linewise_current = function()
  return
      vim.v.count == 0
      and "<Plug>(comment_toggle_linewise_current)"
      or "<Plug>(comment_toggle_linewise_count)"
end
modes['i']["<C-/>"] = rtn.i .. toggle_linewise_current()
modes['n']["<C-/>"] = toggle_linewise_current()
modes['x']["<C-/>"] = "<Plug>(comment_toggle_linewise_visual)"
modes['v']["<C-/>"] = "<Plug>(comment_toggle_linewise_visual)"

-- Jupyter in Repl --
vim.cmd([[ nmap ]x ctrih/^# %%<CR><CR> ]])

-- Run in Repl --
-- ref: https://github.com/Vigemus/iron.nvim
modes['i']["<C-e>"] = rtn.i .. ":lua require('iron.core').send_line()<CR>"
modes['n']["<C-e>"] = ":lua require('iron.core').send_line()<CR>"
modes['v']["<C-e>"] = ":lua require('iron.core').visual_send()<CR>"
modes['x']["<C-e>"] = ":lua require('iron.core').visual_send()<CR>"

-- Run in IPython --
-- ref: https://github.com/akinsho/toggleterm.nvim
modes['i']["<C-i>"] = rtn.i .. ":ToggleTermSendCurrentLine 7<CR>"
modes['n']["<C-i>"] = ":ToggleTermSendCurrentLine 7<CR>"
modes['x']["<C-i>"] = ":ToggleTermSendVisualLines 7<CR>"
modes['v']["<C-i>"] = ":ToggleTermSendVisualLines 7<CR>"
