return {
  "danymat/neogen",
  config = true,
  opts = {
    snippet_engine = "nvim",
    languages = {
      python = {
        template = {
          annotation_convention = "reST",
        },
      },
    },
  },
  keys = {
    {
      "<leader>cn",
      desc = "Neogen Annotate",
    },
    {
      "<leader>cnf",
      function()
        require("neogen").generate({
          type = "func",
        })
      end,
      desc = "Annotate function",
    },
    {
      "<leader>cnt",
      function()
        require("neogen").generate({
          type = "type",
        })
      end,
      desc = "Annotate type",
    },
    {
      "<leader>cnc",
      function()
        require("neogen").generate({
          type = "class",
        })
      end,
      desc = "Annotate class",
    },
    {
      "<leader>cnF",
      function()
        require("neogen").generate({
          type = "file",
        })
      end,
      desc = "Annotate file",
    },
  },
}
