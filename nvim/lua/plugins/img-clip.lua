return {
  "HakonHarnes/img-clip.nvim",
  event = "VeryLazy",
  opts = {
    default = {
      dir_path = "./Files",
      extension = "webp",
    },
    -- add options here
    -- or leave it empty to use the default settings
  },
  keys = {
    -- suggested keymap
    { "<leader>pp", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
  },
}
