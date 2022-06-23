function LazyToggle()
    if vim.opt.lazyredraw then
        print('Disabled Lazy Redraw')
        vim.o.lazyredraw = false
    else
        print('Enabled Lazy Redraw')
        vim.o.lazyredraw = true
    end
end
vim.api.nvim_set_keymap('n', '<Leader>ll', 'v:lua.LazyToggle()<CR>', { noremap = true, silent = true })

