local M = {}

M.dap = {
    plugin = true,
    n = {
        ["<leader>db"] = {
            "<cmd> DapToggleBreakpoint <CR>", "Breakpoint"
        }
    }
}

M.dap_python = {
    plugin = true,
    n = {
        ["<leader>dr"] = {
            function()
                require("dap-python").test_method()
            end,
            "Run Test Method"
        }
    }
}

M.gitsigns = {
    plugin = true,
    n = {
        ["<leader>gt"] = {
            "<cmd> Gitsigns toggle_current_line_blame<CR>", "Toggle Line Blame"
        }
    }
}

return M
