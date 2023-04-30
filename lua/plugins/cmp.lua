-- nvim-cmp setup
local cmp = require('cmp')
local luasnip = require('luasnip')
local lspkind = require('lspkind')

lspkind.init()
luasnip.config.setup {}

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert {
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    -- not sure the difference between complete & confirm is
    -- ['<C-Space>'] = cmp.mapping.complete {}, 
    ['<C-y>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
  },
  sources = {
    { name = 'luasnip' },
    { name = 'nvim_lsp', keyword_length = 4 },
    { name = "nvim_lua", keyword_length = 4 },
    { name = "buffer", keyword_length = 4 },
    { name = "path" },
  },
  formatting = { -- how options show up in the completion menu
    format = lspkind.cmp_format {
      with_text = true,
      menu = {
        buffer = "[BUF]",
        nvim_lua = "[API]",
        nvim_lsp = "[LSP]",
        luasnip = "[SNIP]",
        path = "[PATH]",
        cmdline = "[CLI]",
      }
    }
  },
}

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })
