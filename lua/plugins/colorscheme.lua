return {
  -- add onedarkpro
  { "catppuccin/nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
    specs = {
      {
        "akinsho/bufferline.nvim",
        init = function()
          local bufline = require("catppuccin.groups.integrations.bufferline")
          function bufline.get()
            return bufline.get_theme()
          end
        end,
      },
    },
  },
}
