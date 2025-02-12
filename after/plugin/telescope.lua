local telescope = require("telescope")

telescope.setup {
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      find_command = {'rg', '--files', '--hidden', '-g', '!.git'}
    },
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    }
  },
  pickers = {
    find_files = {
      find_command = {'rg', '--files', '--hidden', '-g', '!.git'},
      file_ignore_patterns = {"node_modules"},
    },
    live_grep = {
        file_ignore_patterns = {"node_modules", "package-lock*"}
    },
  },
}

telescope.load_extension("file_browser")
telescope.load_extension("fzf")
--telescope.load_extension("vim_bookmarks")
telescope.load_extension('bookmarks')
telescope.load_extension("live_grep_args")

local builtin = require('telescope.builtin')
local bookmarks = telescope.extensions.bookmarks
local live_grep_args = telescope.extensions.live_grep_args

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
vim.keymap.set("n", "<leader>pg", live_grep_args.live_grep_args, {})
vim.keymap.set('n', '<leader>bb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ba', bookmarks.list, {})
