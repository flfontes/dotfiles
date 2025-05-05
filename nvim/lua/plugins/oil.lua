return {
  "stevearc/oil.nvim",
  ---@module "oil"
  ---@type oil.SetupOpts
  opts = {
    view_options = {
      show_hidden = true,
    },
    win_options = {
      signcolumn = "yes:2",
    },
  },
  --- dependencies = { { "echasnovski/mini.icons", opts={} } }, --- already part of my setup
  lazy = false,
}
