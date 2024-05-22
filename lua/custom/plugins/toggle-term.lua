return {
  -- toggleterm
  'akinsho/toggleterm.nvim',
  version = '*',
  dependencies = {},
  opts = {
    open_mapping = [[<c-\>]],
  },

  -- enable below for floaty terminal
  --toggleterm
  -- function _TERMINAL_TOGGLE()
  --   require("toggleterm.terminal").Terminal:new({
  --     id = 1,
  --     direction = "float",
  --     float_opts = {
  --       border = "curved",  -- You can choose: 'single', 'double', 'shadow', or 'curved'
  --       width = math.floor(vim.o.columns * 0.95),  -- 80% of the total columns
  --       height = math.floor(vim.o.lines * 0.95),  -- 80% of the total lines
  --      winblend = 0,
  --    },
  --  }):toggle()
  --end
}
