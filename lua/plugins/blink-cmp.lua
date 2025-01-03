return {
  "Saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "enter",
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
    },
    -- maybe optional
    completion = { list = { selection = "auto_insert" } },
  },
}
