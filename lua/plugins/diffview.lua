return {
  "sindrets/diffview.nvim",
  cmd = {
    "DiffviewOpen",
    "DiffviewClose",
    "DiffviewToggleFiles",
    "DiffviewFocusFiles",
    "DiffviewFileHistory",
  },
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Diffview: Open" },
    { "<leader>gq", "<cmd>DiffviewClose<cr>", desc = "Diffview: Close" },
    { "<leader>gh", "<cmd>DiffviewFileHistory<cr>", desc = "Diffview: File History" },
  },
  config = function()
    require("diffview").setup({
      -- Add any custom configuration here
    })
  end,
}
