-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("BufFormatter", { clear = true }),
  pattern = "*.proto",
  callback = function()
    local filename = vim.api.nvim_buf_get_name(0)
    vim.fn.jobstart({ "buf", "format", filename, "-w" }, {
      stdout_buffered = true,
      on_stdout = function(_, data)
        if data then
          vim.cmd("edit")
          print(data)
        end
      end,
      on_stderr = function(_, data)
        if data then
          print(data)
        end
      end,
    })
  end,
})
