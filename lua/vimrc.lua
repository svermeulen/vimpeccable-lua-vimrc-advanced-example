
util = require('vimrc.util')

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true

vim.o.hidden = true

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

vimp.nnoremap('<leader>ev', ':vsplit ~/.config/nvim/plugged/vimpeccable-lua-vimrc-advanced-example/lua/vimrc.lua<cr>')
-- Or:
-- vimp.nnoremap('<leader>ev', [[:vsplit ~/.config/nvim/plugged/vimpeccable-lua-vimrc-advanced-example/lua/vimrc.lua<cr>]])
-- Or:
-- vimp.nnoremap('<leader>ev', function()
--   vim.cmd('vsplit ~/.config/nvim/plugged/vimpeccable-lua-vimrc-advanced-example/lua/vimrc.lua')
-- end)

vim.cmd('colorscheme gruvbox')

-- r = reload vimrc
vimp.nnoremap('<leader>r', function()
  -- Remove all previously added vimpeccable maps
  vimp.unmap_all()
  -- Unload the lua namespace so that the next time require('vimrc.X') is called
  -- it will reload it
  util.unload_lua_namespace('vimrc')
  -- Make sure all open buffers are saved
  vim.cmd('silent wa')
  -- Execute our vimrc lua file again to add back our maps
  require('vimrc')

  print("Reloaded vimrc!")
end)

vimp.bind({'repeatable'}, '[e', ':move--<cr>')
vimp.bind({'repeatable'}, ']e', ':move+<cr>')

-- When we hit escape in the middle of a leader chord, make that a <nop>
vimp.add_chord_cancellations('n', '<leader>')

