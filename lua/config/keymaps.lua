-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local scratch_buf = nil
local scratch_win = nil

vim.keymap.set("n", "<leader>bn", function()
  if scratch_win and vim.api.nvim_win_is_valid(scratch_win) then
    -- Hide the note by closing the window
    vim.api.nvim_win_hide(scratch_win)
    scratch_win = nil
  else
    -- Create buffer only if it doesn't exist
    if not scratch_buf or not vim.api.nvim_buf_is_valid(scratch_buf) then
      scratch_buf = vim.api.nvim_create_buf(false, true)
      vim.bo[scratch_buf].buftype = "nofile"
      vim.bo[scratch_buf].bufhidden = "hide"
      vim.bo[scratch_buf].swapfile = false
      vim.bo[scratch_buf].filetype = "markdown"
    end

    -- Open floating window
    scratch_win = vim.api.nvim_open_win(scratch_buf, true, {
      relative = "editor",
      width = math.floor(vim.o.columns * 0.6),
      height = math.floor(vim.o.lines * 0.5),
      col = math.floor(vim.o.columns * 0.2),
      row = math.floor(vim.o.lines * 0.2),
      style = "minimal",
      border = "rounded",
    })
  end
end, { desc = "Toggle Floating Markdown Note" })
