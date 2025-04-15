require ("catppuccin").setup({
flavour = "mocha",
transparent_background = true,
integrations = {
treesitter = true,
cmp = true,
gitsigns = true,
telescope = true,
nvimtree = true,
dashboard = true,
which_key = true,
indent_blankline = {enabled = true},
markdown = true,
native_lsp = {enabled = true},
}
})
vim.cmd("colorscheme catppuccin")
