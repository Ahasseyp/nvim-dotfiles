local ls = require("null-ls")

ls.setup({
	sources = {
		ls.builtins.formatting.black.with({
			extra_args = { "--line-length=120", "--skip-string-normalization" },
		}),
		ls.builtins.formatting.stylua,
		ls.builtins.formatting.prettier.with({
			filetypes = { "astro" },
		}),
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.lua",
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
})

-- Autoformat on save
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.astro",
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
})
