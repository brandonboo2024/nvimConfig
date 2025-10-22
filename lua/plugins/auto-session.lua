-- return {
--     'rmagatti/auto-session',
--     lazy = false,
--     -- dependencies = {
--         --     'nvim-telescope/telescope.nvim', -- Only needed if you want to use sesssion lens
--         -- },
--         config = function()
--             vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
--             require('auto-session').setup({
--                 auto_session_suppress_dirs = { '~/', '~/Downloads', '/' },
--             })
--         end,
-- }


return {
  'rmagatti/auto-session',
  lazy = false, -- Load immediately on startup
  config = function()
    -- Set what gets saved in the session
    vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

    -- Setup auto-session without auto-restore on startup
    require('auto-session').setup({
      auto_restore_enabled = false,       -- 🚫 don't restore session automatically
      auto_save_enabled = true,           -- ✅ still save session when exiting
      auto_session_enable_last_session = false,
      auto_session_suppress_dirs = {      -- 📂 ignore dashboard/home dirs
        '~/', '~/Downloads', '/', '/etc'
      },
      log_level = 'info',
    })
  end,
}
