-- save
vim.cmd 'nmap <leader>w :w<cr>'
-- redo
vim.keymap.set('n', 'U', '<C-r>')
-- unbind C-z mapping
vim.keymap.set('n', '<C-z>', '<nop>')
vim.keymap.set('i', '<C-c>', '<nop>')
