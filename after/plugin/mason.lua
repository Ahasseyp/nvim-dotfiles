local lspconfig = require("lspconfig")

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "astro-language-server" },
})

lspconfig.cucumber_language_server.setup({
	features = { "**/*.feature" },
	steps = { "src/cucumber/steps/**/*.ts" },
})

-- Setup Astro LSP
lspconfig.astro.setup({})
