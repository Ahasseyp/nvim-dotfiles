vim.keymap.set("n", "<C-k>", "none")
-- navigation
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")

-- preserve register when pasting over another
vim.keymap.set("x", "<leader>p", "\"_dP")

-- find and replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>//gcI<Left><Left><Left><Left>]])
