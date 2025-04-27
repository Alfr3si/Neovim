local lspconfig = require("lspconfig")

return function(capabilities)
  lspconfig.phpactor.setup({
    capabilities = capabilities,
    cmd = { "phpactor", "language-server" },
    filetypes = { "php" },
  })
end
