-- save
vim.cmd 'nmap <leader>w :w<cr>'
-- redo
vim.keymap.set('n', 'U', '<C-r>')
-- unbind C-z mapping
vim.keymap.set('n', '<C-z>', '<nop>')
vim.keymap.set('i', '<C-c>', '<nop>')
-- search text in files within telescope
vim.api.nvim_set_keymap('n', '<leader>st', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true, silent = true })
