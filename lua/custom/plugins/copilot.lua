return {
  'github/copilot.vim',
  version = '*',
  dependencies = {},
  opts = {},
  config = function()
    vim.cmd 'Copilot setup'
  end,
}
