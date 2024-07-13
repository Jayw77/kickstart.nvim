-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- shows hidden items differently
        hide_dotfiles = false,
        hide_gitignored = false, -- Don't hide .gitignore files
        never_show = {}, -- This list should be empty to ensure .git is visible
      },
      follow_current_file = { enabled = true }, -- Optional: Automatically focus on the current file
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
