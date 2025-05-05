return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "bash",
        "c",
        "go",
        "html",
        "lua",
        "markdown",
        "python",
        "query",
        "r",
        "rust",
        "toml",
        "vim",
        "vimdoc",
      },
      highlight = { enable = true },
      sync_install = false,
      nightlight = {
        enable = true,
        additional_vim_regex_highlighting = { "markdown" },
      },
      indent = { enable = true },
      incremental_selection = { -- Setups incremental selection of code blocks
        enable = true,
        keymaps = {
          init_selection = "<Enter>", -- set to `false` to disable one of the mappings
          node_incremental = "<Enter>",
          scope_incremental = false,
          node_decremental = "<Backspace>",
        },
      },
    })
  end,
}
