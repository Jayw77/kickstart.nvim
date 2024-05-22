-- use local value, name is irrelevant really, more like a var name
local M = {}

-- Register keybindings with which-key
local wk = require 'which-key'

-- no leader key required, automatically added as part of the main config (init.lua)
M.keybindings = {
  t = {
    name = 'Terminal',
    f = { '<cmd>ToggleTerm direction=float<cr>', 'Float' }, -- Floating Terminal
    -- Play with size according to your needs.
    h = { '<cmd>ToggleTerm size=10 direction=horizontal<cr>', 'Horizontal' }, -- Horizontal Terminal,
    v = { '<cmd>ToggleTerm size=80 direction=vertical<cr>', 'Vertical' }, -- Vertical Terminal
  },
  g = {
    name = 'git',
    g = { '<cmd>lua _lazygit_toggle()<cr>', 'LazyGit' },
  },
  w = { ':w<cr>', 'Save file' },
}

return M
