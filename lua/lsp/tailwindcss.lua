local lspconfig = require("lspconfig")

return function(capabilities)
  lspconfig.tailwindcss.setup({
    capabilities = capabilities,
    filetypes = { "html", "css", "javascriptreact" },
    settings = {
      tailwindCSS = {
        classAttributes = { "class", "className", "class:list", "classList", "ngClass" },
        lint = {
          cssConflict = "warning",
          invalidApply = "error",
          invalidConfigPath = "error",
          invalidScreen = "error",
          invalidTailwindDirective = "error",
          invalidVariant = "error",
          recommendedVariantOrder = "warning",
        },
        validate = true,
      },
    },
  })
end
