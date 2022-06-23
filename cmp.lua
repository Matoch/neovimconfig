vim.opt.completeopt={"menu","menuone","noselect"}

  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body) 
      end,
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), 
--[[      ['<Tab>'] = function(core, fallback)
        if vim.fn.pumvisible() == 1 then
            vim.fn.feedkeys(t('<C-n>'), 'n')
        elseif luasnip.expand_or_jumpable() then
            vim.fn.feedkeys(t('<Plug>luasnip-expand-or-jump'), '')
        elseif not check_back_space() then
            cmp.mapping.complete()(core, fallback)
        else
            vim.cmd(':>')
        end
      end,
      ['<S-Tab>'] = function(core, fallback)
        if vim.fn.pumvisible() == 1 then
            vim.fn.feedkeys(t('<C-p>'), 'n')
        elseif luasnip.jumpable(-1) then
            vim.fn.feedkeys(t('<Plug>luasnip-jump-prev'), '')
        else
            vim.cmd(':<')
        end
      end,
--]]
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' }, 
    }, {
      { name = 'buffer' },
    })
  })

  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, 
    }, {
      { name = 'buffer' },
    })
  })

  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })
