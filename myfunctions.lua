function LazyToggle()
    if vim.opt.lazyredraw:get() then
        print('Disabled Lazy Redraw')
        vim.opt.lazyredraw = false
    else
        print('Enabled Lazy Redraw')
        vim.opt.lazyredraw = true
    end
end

vim.g.cpmode = false
function ToggleCopyMode()
    if vim.g.cpmode == false then
      print("Copy Mode Enabled")
      vim.opt.list = false
      vim.opt.number = false
      vim.opt.relativenumber = false
      vim.wo.signcolumn = 'no'
      vim.g.cpmode = true
    else 
      print("Copy Mode Disabled")
      vim.opt.list = true
      vim.opt.number = true
      vim.opt.relativenumber = true
      vim.wo.signcolumn = 'yes:1'
      vim.g.cpmode = false
    end
end
