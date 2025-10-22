-- Custom startup.lua file for Neovim
-- Combines the evil theme's aesthetics with the default theme's functionality
-- To be placed in ~/.config/nvim/

-- Define a custom startup theme that uses the evil theme's aesthetics
-- with the default theme's functionality
local custom_theme = {
  -- Header section with the hydra logo from evil theme
  header = {
    type = "text",
    align = "center",
    fold_section = false,
    title = "Header",
    margin = 5,
    content = {
      " ⣴⣶⣤⡤⠦⣤⣀⣤⠆ ⣈⣭⣿⣶⣿⣦⣼⣆ ",
      " ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦ ",
      " ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷ ⠻⠿⢿⣿⣧⣄ ",
      " ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄ ",
      " ⢠⣿⣿⣿⠈ ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀ ",
      " ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘ ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄ ",
      " ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷ ⢊⣿⣿⡏ ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄ ",
      " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄ ",
      " ⠙⠃ ⣼⣿⡟ ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
      " ⢻⣿⣿⣄ ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆ ",
      " ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃ ",
    },
    highlight = "Statement",
    default_color = "",
    oldfiles_amount = 0,
  },
  
  -- Quote section from evil theme
  header_2 = {
    type = "text",
    oldfiles_directory = false,
    align = "center",
    fold_section = false,
    title = "Quote",
    margin = 5,
    content = function()
      return {
        "We don't need the memories.",
      }
    end,
    highlight = "Constant",
    default_color = "",
    oldfiles_amount = 0,
  },
  
  -- Basic Commands section from default theme
  body = {
    type = "mapping",
    oldfiles_directory = false,
    align = "center",
    fold_section = false,
    title = "Basic Commands",
    margin = 5,
    content = {
      { " Find File", "Telescope find_files", "<leader>ff" },
      { " Find Word", "Telescope live_grep", "<leader>lg" },
      { " Recent Files", "Telescope oldfiles", "<leader>of" },
      { " File Browser", "Telescope file_browser", "<leader>fb" },
      { " Colorschemes", "Telescope colorscheme", "<leader>cs" },
      { " New File", "lua require'startup'.new_file()", "<leader>nf" },
      { "  Session Search", "Telescope session-lens search_session", "<leader>ss" },
    },
    highlight = "String",
    default_color = "",
    oldfiles_amount = 0,
  },
  -- Clock section from evil theme
  clock = {
    type = "text",
    content = function()
      local clock = " " .. os.date("%H:%M")
      local date = " " .. os.date("%d-%m-%y")
      return {
        clock,
        date
      }
    end,
    oldfiles_directory = false,
    align = "center",
    fold_section = false,
    title = "",
    margin = 5,
    highlight = "TSString",
    default_color = "#FFFFFF",
    oldfiles_amount = 10,
  },
  
  -- Plugin count section from evil theme, adapted for lazy.nvim
  footer_2 = {
    type = "text",
    content = function()
      -- Check if lazy.nvim is available
      local has_lazy, lazy = pcall(require, "lazy")
      if has_lazy then
        local stats = lazy.stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        return { "Total plugins (lazy.nvim): " .. stats.count .. " loaded in " .. ms .. "ms" }
      else
        -- Fallback if lazy.nvim is not available
        return { "Total plugins: N/A" }
      end
    end,
    oldfiles_directory = false,
    align = "center",
    fold_section = false,
    title = "",
    margin = 5,
    highlight = "TSString",
    default_color = "#FFFFFF",
    oldfiles_amount = 10,
  },
  
  -- Options section
  options = {
    mapping_keys = true,
    cursor_column = 0.5,
    empty_lines_between_mappings = true,
    disable_statuslines = true,
    paddings = { 2, 2, 2, 2, 2, 2, 2 },
    after = function()
      -- This function gets executed after the startup screen is displayed
      -- You can add any additional setup here
    end,
  },
  
  -- Mappings section
  mappings = {
    execute_command = "<CR>",
    open_file = "o",
    open_file_split = "<c-o>",
    open_section = "<TAB>",
    open_help = "?",
  },
  
  -- Colors section from evil theme
  colors = {
    background = "#1f2227",
    folded_section = "#56b6c2",
  },
  
  -- Parts section
  parts = { "header", "header_2", "body", "clock", "footer_2" },
}

-- Return the configuration for lazy.nvim
return {
  {
    "max397574/startup.nvim",
    dependencies = { 
      "nvim-telescope/telescope.nvim", 
      "nvim-lua/plenary.nvim", 
      "nvim-telescope/telescope-file-browser.nvim" 
    },
    config = function()
      -- Register the custom theme
      require("startup").setup(custom_theme)
    end,
  }
}
