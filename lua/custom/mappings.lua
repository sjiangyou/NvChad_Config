local M = {}

M.gitsigns = {
    plugin = true,
    n = {
        ["<leader>gt"] = {
            "<cmd> Gitsigns toggle_current_line_blame<CR>", "Toggle Line Blame"
        }
    }
}

M.auto_session = {
    plugin = false,
    n = {
        ["<leader>cs"] = {
            "<cmd> SessionSearch<CR>", "List Sessions"
        }
    }
}

return M
