local toggleterm = require("toggleterm").setup{}

--:ToggleTerm size=40 dir=~/Desktop direction=horizontal name=desktop

vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm size=20<cr>")

vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
