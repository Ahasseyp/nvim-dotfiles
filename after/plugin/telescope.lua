require("telescope").setup {
    extensions = {
        file_browser = {
            theme = "ivy",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            mappings = {
                ["i"] = {
                    -- your custom insert mode mappings
                },
                ["n"] = {
                    -- your custom normal mode mappings
                },
            },
            find_command = {'rg', '--files', '--hidden', '-g', '!.git'}
        },
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
        },
    },
    pickers = {
        find_files = {
            find_command = {'rg', '--files', '--hidden', '-g', '!.git'},
            file_ignore_patterns = {"node_modules"}
        },
        live_grep = {
            file_ignore_patterns = {"node_modules", "package-lock*", "package"}
        }
    },
}
require("telescope").load_extension "file_browser"
require("telescope").load_extension "fzf"
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
vim.keymap.set('n', '<leader>bb', builtin.buffers, {})
vim.api.nvim_set_keymap("n", "<CR>", ":Telescope file_browser<CR>", { noremap = true } )
