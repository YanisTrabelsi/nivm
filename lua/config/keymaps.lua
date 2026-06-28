local set = vim.keymap.set

-- Telescope
set("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "find_files" })
set("n", "<leader>f", "<cmd>Telescope find_files<cr>", { desc = "telescope_find" })
set("n", "<leader>g", "<cmd>Telescope live_grep<cr>", { desc = "telescope_grep" })
set("n", "<leader>G", "<cmd>Telescope grep_string<cr>", { desc = "telescope_grep_string" })
