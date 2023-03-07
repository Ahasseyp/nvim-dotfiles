vim.api.nvim_command("autocmd BufWritePre *.py Black")
vim.api.nvim_command("autocmd BufWritePre *.html,*.css,*.js,*.jsx Prettier")
