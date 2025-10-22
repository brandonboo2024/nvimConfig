return {
    {"mason-org/mason.nvim",
        opts = {},
        config = function()
            require("mason").setup()
        end,
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {"lua_ls", "rust_analyzer"},
        },
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason-lspconfig").setup()
           -- require("mason-lspconfig").setup_handlers({
           --     function(server_name)
           --         require("lspconfig")[server_name].setup({})
           -- end,
           -- })
        end,
    },
}
