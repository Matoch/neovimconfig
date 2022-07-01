function LazyToggle()
    if vim.opt.lazyredraw:get() then
        print('Disabled Lazy Redraw')
        vim.opt.lazyredraw = false
    else
        print('Enabled Lazy Redraw')
        vim.opt.lazyredraw = true
    end
end

-- Print function to inspect neovim objects
function P(v)
   print(vim.inspect(v))
   return v
end
