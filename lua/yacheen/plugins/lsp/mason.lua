return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        -- import mason
        local mason = require("mason")

        -- import mason-lspconfig
        local mason_lspconfig = require("mason-lspconfig")

        -- enable mason and configure icons
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                }
            }
        })

        mason_lspconfig.setup({
            -- list of servers for mason to install
            ensure_installed = {
                "rust_analyzer",
                "taplo", -- toml files
                "tsserver",
                "html",
                "cssls",
                "tailwindcss",
                "lua_ls",
                -- "pyright"
                "graphql",
                "emmet_ls", -- idk
                "bashls",
                "dockerls",
                "marksman", -- markdown
                "clangd",
                "csharp_ls"

            },
            -- auto-install configured servers (with lspconfig)
            automatic_installation = true, -- not the same as ensure_installed
        })

    end,
}
