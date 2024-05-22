-- lazygit
function _LAZYGIT_TOGGLE()
  require("toggleterm.terminal").Terminal:new({
    cmd = "lazygit",
    dir = "git_dir",
    direction = "float",
    float_opts = {
      border = "double",
    },
    on_open = function(term)
      vim.cmd("startinsert!")
      vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<esc>", "<cmd>close<CR>", {noremap = true, silent = true})
    end,
  }):toggle()
end

--lazygit
vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", {noremap = true, silent = true})
