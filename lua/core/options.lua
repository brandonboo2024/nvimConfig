
-- Split help windows below
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Prevent wrapping so you do not skip over them, and reduce amount of spaces when you tab
vim.opt.wrap = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Scroll Offset
vim.opt.scrolloff = 999

-- Set <space> as the leader key
-- See `:help mapleader`
-- NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '

-- [[ Setting options ]] See `:h vim.o`
-- NOTE: You can change these options as you wish!
-- For more options, you can see `:help option-list`
-- To see documentation for an option, you can use `:h 'optionname'`, for example `:h 'number'`
-- (Note the single quotes)

-- Print the line number in front of each line
vim.o.number = true

-- Use relative line numbers, so that it is easier to jump with j, k. This will affect the 'number'
-- option above, see `:h number_relativenumber`
vim.o.relativenumber = true

-- Sync clipboard between OS and Neovim. Schedule the setting after `UiEnter` because it can
-- increase startup-time. Remove this option if you want your OS clipboard to remain independent.
-- vim.api.nvim_create_autocmd('UIEnter', {
--   callback = function()
--     vim.o.clipboard='unnamedplus'
--   end,
-- })
--
vim.o.clipboard='unnamedplus'


-- vim.g.clipboard = {
--   name = 'WslClipboard',
--   copy= {
--     ['+'] = 'clip.exe',
--     ['*'] = 'clip.exe',
--   },
--   paste = {
--     ['+'] = 'powershell.exe -NoProfile -Command "Get-Clipboard"',
--     ['*'] = 'powershell.exe -NoProfile -Command "Get-Clipboard"',
--   },
--   cache_enabled = 0,
-- }

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Highlight the line where the cursor is on
vim.o.cursorline = true

-- Show <tab> and trailing spaces
vim.o.list = true

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s) See `:help 'confirm'`
vim.o.confirm = true

-- Adjusts visual block mode to be like MSExcel
vim.opt.virtualedit = "block"

-- When running substitution commands, it shows me in another window
vim.opt.inccommand = "split"

-- Turning on gui colours
vim.opt.termguicolors = true

