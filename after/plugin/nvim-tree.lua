-- empty setup using defaults
require("nvim-tree").setup({
	view = {
		width = 40,
	},
})

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")
