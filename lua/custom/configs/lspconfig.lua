local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})

lspconfig.julials.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"julia"},
})

lspconfig.ltex.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"tex", "latex"},
})

lspconfig.java_language_server.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"java"},
    cmd = { "java-language-server" },
})
