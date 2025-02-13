return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    strategies = {
      chat = {
        adapter = "codellama",
      },
    },
    opts = {
      log_level = "ERROR",
    },
    adapters = {
      codellama = function()
        return require("codecompanion.adapters").extend("ollama", {
          name = "codellama",
          schema = {
            model = {
              default = "codellama:13b",
            },
            num_ctx = {
              default = 16384,
            },
            num_predict = {
              default = -1,
            },
          },
        })
      end,
    },
  },
}
