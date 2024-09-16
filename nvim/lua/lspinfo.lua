local lsp_zero = require('lsp-zero')
local lspconfig = require('lspconfig')
local mason = require('mason')
local masonlspconfig = require('mason-lspconfig')
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local cmp_format = require('lsp-zero').cmp_format({ details = true })

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

mason.setup({})
masonlspconfig.setup({
  ensure_installed = { "jdtls" },
  handlers = {
    lsp_zero.default_setup,
  },
})

require('luasnip.loaders.from_vscode').lazy_load()
require('luasnip').filetype_extend('typescript', { 'javascript' })

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
    {name = 'luasnip'},
  },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
    ['<Tab>'] = cmp.mapping.select_next_item({behavior = 'select'}),
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },

  formatting = cmp_format,
})
