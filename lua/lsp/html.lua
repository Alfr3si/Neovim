local lspconfig = require("lspconfig")

return function(capabilities)
  lspconfig.html.setup({
    capabilities = capabilities,
    filetypes = { "html", "templ" },
    init_options = {
      configurationSection = { "html", "css", "javascript" },
      embeddedLanguages = {
        css = true,
        javascript = true,
      },
      provideFormatter = true,
    },
  })
end
