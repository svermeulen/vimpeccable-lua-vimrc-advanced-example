
require('vimp')

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true

vim.o.history = 5000

vim.o.tabstop = 4
vim.o.shiftwidth = vim.o.tabstop
vim.g.mapleader = " "

vim.cmd('colorscheme gruvbox')

-- Note that we are using 'vimp' (not 'vim') below to add the maps
-- vimp is shorthand for vimpeccable

vimp.nnoremap('<leader>hw', function()
  print('hello')
  print('world')
end)

-- Toggle line numbers
vimp.nnoremap('<leader>n', function()
  vim.wo.number = not vim.wo.number
end)

-- Keep the cursor in place while joining lines
vimp.nnoremap('J', 'mzJ`z')

vimp.nnoremap('<leader>ev', ':vsplit ~/.config/nvim/plugged/vimpeccable-lua-vimrc-example/lua/vimrc.lua<cr>')
-- Or:
-- vimp.nnoremap('<leader>ev', [[:vsplit ~/.config/nvim/plugged/vimpeccable-lua-vimrc-example/lua/vimrc.lua<cr>]])
-- Or:
-- vimp.nnoremap('<leader>ev', function()
--   vim.cmd('vsplit ~/.config/nvim/plugged/vimpeccable-lua-vimrc-example/lua/vimrc.lua')
-- end)

vim.cmd('colorscheme gruvbox')

