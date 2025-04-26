return function()
require("ibl").setup(
    {
        indent = {
        char = "│", -- Puedes usar "▏", "┆", etc.},
      scope = {
        enabled = true,
        show_start = false,
        show_end = false,
        highlight = { "Function", "Label", "Keyword", "Constant" },
        include = {
          node_type = {
             ["*"] = {                 -- wildcard para todos los lenguajes
             "function",
             "table_constructor",
             "block",
             "call_expression",      -- para llamadas como require()
             "if_statement",    },
          },
        },
      },
      whitespace = {
        remove_blankline_trail = true,
      },
      exclude = {
        filetypes = {
          "help",
          "lazy",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "mason",
        },
      },
    }
)
end
