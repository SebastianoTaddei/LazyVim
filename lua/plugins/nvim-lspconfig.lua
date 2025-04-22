local en_general_dict = vim.fn.readfile(vim.fn.expand("~/.config/nvim/ltex/en_general.txt"))

local function merge_lists(...)
  local seen, result = {}, {}
  for _, list in ipairs({ ... }) do
    for _, word in ipairs(list) do
      if not seen[word] then
        seen[word] = true
        table.insert(result, word)
      end
    end
  end
  return result
end

local en_us = en_general_dict
local en_gb = en_general_dict

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        clangd = {
          cmd = {
            "/opt/homebrew/opt/llvm/bin/clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--fallback-style=llvm",
          },
        },
        ltex = {
          settings = {
            ltex = {
              language = "en-US",
              additionalRules = {
                enablePickyRules = true,
              },
              dictionary = {
                ["en-US"] = en_us,
                ["en-GB"] = en_gb,
              },
            },
          },
          filetypes = { "tex", "bib", "markdown" },
        },
      },
    },
  },
}
