vim.g.mapleader = " "

--NORMAL MODE--

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>dg", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>wf", vim.cmd.w)
vim.keymap.set("n", "<leader>wa", vim.cmd.wa)
