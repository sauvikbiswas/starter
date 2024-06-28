-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>gb", "<cmd>BlameToggle<cr>", { desc = "ToggleBlame" })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope find_files hidden=true<cr>", { desc = "Find Files (Hidden)" })
vim.keymap.set(
  "n",
  "<leader>sx",
  "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>",
  { desc = "Grep (with args)" }
)
vim.keymap.set("n", "<leader>bX", "<cmd>lua Buf_disabled=true<cr>", { desc = "Disable buf Formatter" })
vim.keymap.set("n", "<leader>bx", "<cmd>lua Buf_disabled=false<cr>", { desc = "Enable buf Formatter" })
