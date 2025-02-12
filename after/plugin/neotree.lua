require("neo-tree").setup({
	window = {
		position = "right",
		width = 35,
		mapping_options = {
			noremap = true,
			nowait = true,
		},
		mappings = {},
	},
})

vim.keymap.set("n", "<CR>", function()
	vim.cmd("NeoTreeFocusToggle")
end)
