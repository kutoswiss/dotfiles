vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
--vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Split screen
vim.keymap.set("n", "<leader>-", ":vsplit<Enter>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>_", ":split<Enter>", { desc = "Split window horizontally" })

-- Open Lazy
vim.keymap.set("n", "<leader>l", ":Lazy<CR>", { desc = "Open Lazy" })

-- Save
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save current file" })

-- Quit
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })

-- Terminal exit
vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>", { desc = "Toggle terminal" })
vim.keymap.set("t", "<Esc><Esc>", "exit<CR>", { desc = "Exit terminal" })

--  Window navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

