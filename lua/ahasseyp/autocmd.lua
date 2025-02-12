vim.api.nvim_command("autocmd BufWritePre *.py Black")
vim.api.nvim_command("autocmd BufWritePre *.html,*.css,*.js,*.ts,*.jsx,*.tsx,*.json Prettier")
vim.api.nvim_command("autocmd BufWritePre *.html,*.css,*.js,*.ts,*.jsx,*.tsx,*.json,.env set nospell")
vim.api.nvim_command("autocmd BufEnter *.txt set spell")
