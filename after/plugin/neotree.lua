require("neo-tree").setup {
    window = {
        mapping_options = {
            noremap = true,
            nowait = true,
        },
        mappings = {
        }
    }
}

vim.keymap.set('n', '<leader>ee', function()
    vim.cmd("NeoTreeFloatToggle")
end)
