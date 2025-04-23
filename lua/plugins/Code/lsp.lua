return function()
local lspconfig = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.lua_ls.setup({
    settings = {
        Lua = {
            telemetry = { enable = false },
            workspace = { checkThirdParty = false },
            diagnostics = {
                globals = { 'vim' },
            },
        },
    },
})

lspconfig.html.setup({
    capabilities = capabilities,
    filetypes = { "html", "templ"},
    init_options = {
    configurationSection = { "html", "css", "javascript" },
    embeddedLanguages = {
        css = true,
        javascript = true,
    },
    provideFormatter = true,
    },
})

lspconfig.tailwindcss.setup({
    filetypes = { "html", "css", "javascriptreact"},
    settings = {
        tailwindCSS = {
            classAttributes = { "class",
                                "className",
                                "class:list",
                                "classList",
                                "ngClass"},
            lint = {
                cssConflict = "warning",
                invalidApply = "error",
                invalidConfigPath = "error",
                invalidScreen = "error",
                invalidTailwindDirective = "error",
                invalidVariant = "error",
                recommendedVariantOrder = "warning"
            },
            validate = true,
        },
    },
})
lspconfig.phpactor.setup{
    cmd = {
        "phpactor", "language-server"
    },
    filetypes = {
        "php"
    },
}
end
