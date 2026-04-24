return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("codecompanion").setup({
        strategies = {
          chat = { adapter = "ollama" },
          inline = { adapter = "ollama" },
        },
        adapters = {
          ollama = require("codecompanion.adapters").extend("ollama", {
            schema = {
              model = { default = "qwen2.5-coder:14b" },
              num_ctx = { default = 16384 },
            },
          }),
        },
      })
    end,
  },
}
