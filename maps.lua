vim.api.nvim_set_keymap('n', '<Leader>ff', [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fg', [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fb', [[<Cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fh', [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fk', [[<Cmd>lua require('telescope.builtin').keymaps()<CR>]], { noremap = true, silent = true })

-- IIQ xml cleanup
vim.api.nvim_set_keymap('n', '<Leader>m', [[<Cmd>:1,$s/\(id\\|modified\\|created\)="[^\"]*"[ ]\?//g<CR>]], { noremap = true, silent = true })

-- Harpoon
vim.api.nvim_set_keymap('n', '<Leader>ha', [[<Cmd>lua require('harpoon.mark').add_file()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>hv', [[<Cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>h1', [[<Cmd>lua require('harpoon.ui').nav_file(1)<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>h2', [[<Cmd>lua require('harpoon.ui').nav_file(2)<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>h3', [[<Cmd>lua require('harpoon.ui').nav_file(3)<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>h4', [[<Cmd>lua require('harpoon.ui').nav_file(4)<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>h5', [[<Cmd>lua require('harpoon.ui').nav_file(5)<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>h6', [[<Cmd>lua require('harpoon.ui').nav_file(6)<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>h7', [[<Cmd>lua require('harpoon.ui').nav_file(7)<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>h8', [[<Cmd>lua require('harpoon.ui').nav_file(8)<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>h9', [[<Cmd>lua require('harpoon.ui').nav_file(9)<CR>]], { noremap = true, silent = true })

vim.keymap.set("v", '<', '<gv', {})
vim.keymap.set("v", '>', '>gv', {})

vim.api.nvim_set_keymap('n', '<F5>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ll', '<cmd>lua LazyToggle()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<Leader>cm', '<cmd>lua ToggleCopyMode()<CR>', {noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>cm', '<cmd>lua require"copymode".toggle()<CR>', {noremap = true, silent = true })
