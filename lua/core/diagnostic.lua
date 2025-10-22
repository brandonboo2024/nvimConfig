
vim.diagnostic.config({
      virtual_lines = true,
      virtual_text = true,        -- show inline errors
      signs = true,               -- show gutter signs
      underline = true,           -- underline problem areas
      update_in_insert = false,   -- only update diagnostics when not typing
      severity_sort = true,       -- sort by error level
})
