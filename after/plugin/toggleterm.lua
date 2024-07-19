local toggleterm = require("toggleterm").setup{}

--:ToggleTerm size=40 dir=~/Desktop direction=horizontal name=desktop

function CountTerms()
	local buffers = vim.api.nvim_list_bufs()
	local terminal_count = 0  
	for _, buffer in ipairs(buffers) do
		if vim.bo[buffer].buftype == "terminal" then
			terminal_count = terminal_count + 1
		end
	end
	return terminal_count
end

vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTermToggleAll<cr>")
vim.keymap.set("n", "<leader>tn", function()
	local command = CountTerms() + 1 .. "ToggleTerm"
	vim.cmd(command)
end)

vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
