local function toggleFugitiveGit()
    if vim.fn.buflisted(vim.fn.bufname('fugitive:///*/.git//$')) ~= 0 then
        vim.cmd[[ execute ":bdelete" bufname('fugitive:///*/.git//$') ]]
    else
        vim.cmd [[
        vert bo Git
        " setlocal winfixwidth
        vertical resize 50
        ]]
    end
end
vim.keymap.set('n', '<leader>g', toggleFugitiveGit)

local function toggleFugitiveGitTerm()
    if vim.fn.buflisted(vim.fn.bufname('fugitive:///*/.git//$')) ~= 0 then
        vim.cmd("q")
    else
        vim.cmd('FloatermNew --title=Git --width=0.5 --height=0.8 nvim -c ":G" +only')
    end
end
vim.keymap.set('n', '<leader>g', toggleFugitiveGitTerm)
