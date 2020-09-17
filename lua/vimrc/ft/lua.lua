
vimp.nnoremap({'buffer'}, '<leader>t1', function() print('lua map!') end)
vimp.nnoremap({'buffer'}, '<leader>t2', function() print('lua map two!') end)

-- Or alternatively:
-- vimp.add_buffer_maps(function()
--   vimp.nnoremap('<leader>t1', function() print('lua map!') end)
--   vimp.nnoremap('<leader>t2', function() print('lua map two!') end)
-- end)
