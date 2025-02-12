local lspkind = require('lspkind')
local tailwind_tools = require('tailwind-tools.cmp')

require('cmp').setup({
  formatting = {
    format = lspkind.cmp_format({
      before = tailwind_tools.lspkind_format
    })
  }
})
