-- Maps "-" in Normal Mode to the Command "Oil --float"
vim.keymap.set("n", "-", "<cmd>Oil --float<CR>")
vim.keymap.set("n", "gl", function()
  vim.diagnostic.open_float()
end, { desc = "Open diagnostics in float" })

-- vim.keymap.set("i", "<C-h>", "<Left>")
-- vim.keymap.set("i", "<C-j>", "<Down>")
-- vim.keymap.set("i", "<C-k>", "<Up>")
-- vim.keymap.set("i", "<C-l>", "<Right>")
