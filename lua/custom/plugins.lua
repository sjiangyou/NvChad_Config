local plugins = {
    {
        "tpope/vim-fugitive",
    },
    {
        "github/copilot.vim",
        lazy = false,
    },
    {
        "rmagatti/auto-session",
        lazy = false,
        dependencies = {
            "nvim-telescope/telescope.nvim",
        },
        config = function()
            require("auto-session").setup({
                auto_session_suppress_dirs = {"~/", "~/Projects", "~/Downloads", "/"},
                session_lens = {
                    buftypes_to_ignore = {},
                    load_on_setup = true,
                    theme_conf = {border = true,},
                    previewer = false,
                },
                pre_save_cmds = {
                    "tabdo NvimTreeClose",
                    "tabdo TelescopeClose",
                    "tabdo TroubleClose",
                    "tabdo LspTroubleClose",
                },
            })
        end,
    },
    {
        "nvim-neotest/nvim-nio"
    },
    {
        "nvimtools/none-ls.nvim",
        ft = {"python"},
        opts = function()
            return require("custom.configs.null-ls")
        end,
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "black",
                "mypy",
                "pyright",
                "pylint",
                "julia-lsp",
                "ltex-ls",
                "java-language-server",
                "css-lsp",
                "html-lsp",
                "bash-language-server",
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
        require("plugins.configs.lspconfig")
        require("custom.configs.lspconfig")
        end,
    },
}

return plugins
