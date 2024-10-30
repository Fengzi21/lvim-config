local terminal = require("lvim.core.terminal")
local Terminal = require("toggleterm.terminal").Terminal
local fmt = string.format

-- config for powershell
if package.config:sub(1, 1) == "\\" then
  local powershell_options = {
    shell = vim.fn.executable("pwsh") == 1 and "pwsh" or "powershell",
    ---@format disable-next
    shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
    shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
    shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
    shellquote = "",
    shellxquote = "",
  }
  for option, value in pairs(powershell_options) do
    vim.opt[option] = value
  end
end

-- Function to be executed when a terminal is created
local function on_term_create(term)
  vim.api.nvim_chan_send(
    term.job_id,
    'eval "$(oh-my-posh init zsh --config ~/.poshthemes/yfn.omp.json)" && clear\n'
  )
end

local conf = {
  -- size can be a number or function which is passed the current terminal
  size = function(term)
    if term.direction == "vertical" then
      return 70
    elseif term.direction == "horizontal" then
      return 10
    end
  end,
  terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
  persist_size = true,
  direction = "float",      -- 'float' | 'horizontal' | 'vertical'
  shell = vim.o.shell,
  on_create = function(term) on_term_create(term) end,
  highlights = {
    Normal = {
      link = "Normal",
    },
    NormalFloat = {
      link = "Normal",
    },
    FloatBorder = {
      link = "Normal",
    },
    SignColumn = {
      link = "Normal",
    },
    SignColumnNC = {
      link = "Normal",
    },
    WinBar = {
      link = "Normal",
    },
    WinBarNC = {
      link = "Normal",
    },
  },
  winbar = {
    enabled = false,
    name_formatter = function(term)
      return fmt("%d:%s", term.id, term:_display_name())
    end,
  },
}

for k, v in pairs(conf) do
  lvim.builtin.terminal[k] = v ---@diagnostic disable-line: assign-type-mismatch
end

---@diagnostic disable-next-line: duplicate-set-field
terminal.lazygit_toggle = function()
  local lazygit = Terminal:new({
    cmd = "lazygit",
    hidden = true,
    direction = "float",
  })
  lazygit:toggle()
end

terminal.node_toggle = function()
  local node = Terminal:new({
    cmd = "node",
    hidden = true,
  })
  node:toggle()
end

terminal.ncdu_toggle = function()
  local ncdu = Terminal:new({
    cmd = "ncdu",
    hidden = true,
  })
  ncdu:toggle()
end

terminal.htop_toggle = function()
  local htop = Terminal:new({
    cmd = "htop",
    hidden = true,
  })
  htop:toggle()
end

terminal.python_toggle = function()
  local python = Terminal:new({
    cmd = "python",
    hidden = true,
    direction = "vertical",
  })
  python:toggle()
end

terminal.ipython_toggle = function()
  local ipython = Terminal:new({
    cmd = "ipython",
    hidden = false,
    id = 7,
    count = 7,
    direction = "vertical",
    auto_scroll = true,
    name = "IPython",
    display_name = "IPython",
  })
  ipython:toggle()
end

function _LAZYGIT_TOGGLE()
  terminal.lazygit_toggle()
end

function _NODE_TOGGLE()
  terminal.node_toggle()
end

function _NCDU_TOGGLE()
  terminal.ncdu_toggle()
end

function _HTOP_TOGGLE()
  terminal.htop_toggle()
end

function _PYTHON_TOGGLE()
  terminal.python_toggle()
end

function _IPYTHON_TOGGLE()
  terminal.ipython_toggle()
end
