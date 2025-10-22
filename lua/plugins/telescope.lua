-- return{
--     "nvim-telescope/telescope.nvim", tag = "0.1.8",
--     dependencies = {"nvim-lua/plenary.nvim"},
--     config = function()
--     end,
-- }

return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup({
      defaults = {
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--hidden", -- include hidden files (respects glob ignore)
          "--glob", "!**/.git/*",
          "--glob", "!**/node_modules/*",
          "--glob", "!**/OneDrive/*",
          "--glob", "!**/iCloud/*",
          "--glob", "!**/Dropbox/*",
          "--glob", "!**/.Trash/*",
        },
        file_ignore_patterns = {
          "node_modules",
          ".git/",
          "OneDrive/",
          "iCloud/",
          "Dropbox/",
          ".Trash/",
        },
      },
    })
  end,
}
