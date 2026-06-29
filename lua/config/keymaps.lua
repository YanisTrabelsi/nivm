local set = vim.keymap.set

-- find
set("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "find files" })
set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "find files" })
set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "telescope grep" })
set("n", "<leader>fG", "<cmd>Telescope grep_string<cr>", { desc = "grep under cursor" })
-- buffer
set("n", "<leader>bb", "<cmd>Telescope buffers<cr>", { desc = "find buffer" })
set("n", "<leader>bn", "<cmd>bn<cr>", { desc = "next buffer" })
set("n", "<leader>bp", "<cmd>bp<cr>", { desc = "previous buffer" })
set("n", "<leader>bl", "<cmd>ls<cr>", { desc = "list buffer" })
set("n", "<leader>bd", "<cmd>bd<cr>", { desc = "delete buffer" })
-- tab
set("n", "<leader>ta", "<cmd>tabnew<cr>", { desc = "add tab" })
set("n", "<leader>tn", "<cmd>tabn<cr>", { desc = "next tab" })
set("n", "<leader>tp", "<cmd>tabp<cr>", { desc = "previous tab" })
-- window
set("n", "<leader>ws", "<cmd>sp<cr><c-w>j", { desc = "horizontal split" })
set("n", "<leader>wv", "<cmd>vsp<cr><c-w>l", { desc = "vertical split" })
set("n", "<leader>wh", "<c-w>h", { desc = "left window" })
set("n", "<leader>wl", "<c-w>l", { desc = "right window" })
set("n", "<leader>wj", "<c-w>j", { desc = "down window" })
set("n", "<leader>wk", "<c-w>k", { desc = "up window" })
set("n", "<leader>wH", "<c-w>H", { desc = "move left window" })
set("n", "<leader>wL", "<c-w>L", { desc = "move right window" })
set("n", "<leader>wJ", "<c-w>J", { desc = "move down window" })
set("n", "<leader>wK", "<c-w>K", { desc = "move up window" })
-- global
set("n", "<leader>qq", "<cmd>wqa<cr>", { desc = "quit all" })
