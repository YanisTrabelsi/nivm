require("config.lazy")
require("config.autocmds")
require("config.keymaps")

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "py", "c", "lua" },
	callback = function()
		vim.treesitter.start()
	end,
})

--options
vim.cmd.colorscheme("catppuccin-nvim")
---------------------------------------
vim.g.mapleader = " "
vim.keymap.set("n", " ", "<Nop>", { desc = "Ignore space", silent = true })
---------------------------------------
vim.o.number = true
vim.o.relativenumber = true
---------------------------------------
vim.o.expandtab = false
vim.o.tabstop = 4
vim.o.shiftwidth = 4
