-- enable below for floaty terminal
-- toggleterm
--function _TERMINAL_TOGGLE()
--   require("toggleterm.terminal").Terminal:new({
--     id = 1,
--     direction = "float",
--     float_opts = {
--       border = "curved", --  You can choose: 'single', 'double', 'shadow', or 'curved'
--       width = math.floor(vim.o.columns * 0.95), --  80% of the total columns
--      height = math.floor(vim.o.lines * 0.95), --  80% of the total lines
--       winblend = 0,
--    },
--  }):toggle()
--end

--toggle terminal
-- vim.api.nvim_set_keymap("t", "<>", "<cmd>lua _TERMINAL_TOGGLE()<CR>", {noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n", "<S-t>", "<cmd>lua _TERMINAL_TOGGLE()<CR>", {noremap = true, silent = true})

-- Define a function to set terminal keymaps
-- function _G.set_terminal_keymaps()
--   local opts = { noremap = true }
--   vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
--   vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
--   vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
--   vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
--   vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
--   vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
-- end
--
-- -- Create an autocommand to set terminal keymaps when a terminal is opened
-- vim.cmd 'autocmd! TermOpen term://* lua set_terminal_keymaps()'

vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', 'jk', [[<C-\><C-n>]], { noremap = true, silent = true })

--lazygit pre-req
local Terminal = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new { cmd = 'lazygit', hidden = true, direction = 'float' }

-- _G. make the function globally useable
function _G._lazygit_toggle()
  lazygit:toggle()
end
