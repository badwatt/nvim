Pack.add({
  "https://github.com/OXY2DEV/markview.nvim",
  "https://github.com/OXY2DEV/helpview.nvim",
})

local helpview = require("helpview")
local markview = require("markview")
require("markview.extras.checkboxes")

markview.setup({
  preview = {
    filetypes = vim.g.markdown_filetypes,
    ignore_buftypes = {},
  },
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = vim.g.markdown_filetypes,
  callback = function(args)
    vim.keymap.set({ "n", "x" }, "<CR>", ":silent! Checkbox toggle<CR>", {
      buffer = args.buf,
      silent = true,
      desc = "Toggle Checkbox (Markview)",
    })
  end,
})

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "help",
  callback = function()
    helpview.setup()
  end,
})
