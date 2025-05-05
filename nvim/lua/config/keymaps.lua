-- Maps "-" in Normal Mode to the Command "Oil --float"
vim.keymap.set("n", "-", "<cmd>Oil --float<CR>")
vim.keymap.set("n", "gl", function()
  vim.diagnostic.open_float()
end, { desc = "Open diagnostics in float" })
