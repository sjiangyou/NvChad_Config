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
        "rcarriga/nvim-dap-ui",
        dependencies = "mfussenegger/nvim-dap",
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")
            dapui.setup()
            dap.listeners.after.event_initialized["dapui-config"] = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated["dapui-config"] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui-config"] = function()
                dapui.close()
            end
        end
    },
    {
        "mfussenegger/nvim-dap",
        config = function(_, opts)
            require("core.utils").load_mappings("dap")
        end
    },
    {
        "mfussenegger/nvim-dap-python",
        ft = "python",
        dependencies = {
            "mfussenegger/nvim-dap",
            "rcarriga/nvim-dap-ui",
            "nvim-neotest/nvim-nio",
        },
        config = function(_, opts)
            local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
            require("dap-python").setup(path)
            require("core.utils").load_mappings("dap-python")
        end,
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
                "debugpy",
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
