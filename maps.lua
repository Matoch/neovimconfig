local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = ' '

keymap('n', '<Leader>ff', [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], opts)
keymap('n', '<Leader>fg', [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], opts)
keymap('n', '<Leader>fb', [[<Cmd>lua require('telescope.builtin').buffers()<CR>]], opts)
keymap('n', '<Leader>fh', [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], opts)
keymap('n', '<Leader>fk', [[<Cmd>lua require('telescope.builtin').keymaps()<CR>]], opts)

-- IIQ Tools
keymap('n', '<Leader>irm', [[<Cmd>:1,$s/\(id\\|modified\\|created\)="[^\"]*"[ ]\?//g<CR>]], opts)
keymap('n', '<Leader>ies', [[<Cmd>:%s/\v^([0-9]*)\|([0-9]*).*$/OR (strm="\1" and class_number="\2")/g<CR><Cmd>:1,%s/\n/ /g<CR><Cmd>:1,$s/^OR/SELECT * from classes where/g<CR>]], opts)

-- Harpoon
keymap('n', '<Leader>ha', [[<Cmd>lua require('harpoon.mark').add_file()<CR>]], opts)
keymap('n', '<Leader>hv', [[<Cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>]], opts)
keymap('n', '<Leader>h1', [[<Cmd>lua require('harpoon.ui').nav_file(1)<CR>]], opts)
keymap('n', '<Leader>h2', [[<Cmd>lua require('harpoon.ui').nav_file(2)<CR>]], opts)
keymap('n', '<Leader>h3', [[<Cmd>lua require('harpoon.ui').nav_file(3)<CR>]], opts)
keymap('n', '<Leader>h4', [[<Cmd>lua require('harpoon.ui').nav_file(4)<CR>]], opts)
keymap('n', '<Leader>h5', [[<Cmd>lua require('harpoon.ui').nav_file(5)<CR>]], opts)
keymap('n', '<Leader>h6', [[<Cmd>lua require('harpoon.ui').nav_file(6)<CR>]], opts)
keymap('n', '<Leader>h7', [[<Cmd>lua require('harpoon.ui').nav_file(7)<CR>]], opts)
keymap('n', '<Leader>h8', [[<Cmd>lua require('harpoon.ui').nav_file(8)<CR>]], opts)
keymap('n', '<Leader>h9', [[<Cmd>lua require('harpoon.ui').nav_file(9)<CR>]], opts)


keymap('n', '<F5>', ':NERDTreeToggle<CR>', opts)
keymap('n', '<Leader>ll', '<cmd>lua LazyToggle()<CR>', opts)
keymap('n', '<Leader>cm', '<cmd>lua require"copymode".toggle()<CR>', {noremap = true, silent = true })

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Visual Block move text up and Down
keymap("x", "J", ":move '>+1<CR>gv-gv", { noremap = true, silent = true})
keymap("x", "K", ":move '<-2<CR>gv-gv", { noremap = true, silent = true})

-- Indent while maintaining visual selection
keymap("v", '<', '<gv', {})
keymap("v", '>', '>gv', {})
