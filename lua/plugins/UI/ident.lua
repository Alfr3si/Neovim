return function()
require("ibl").setup(
    {
        indent = {
        char = "│", -- Puedes usar "▏", "┆", etc.
      },
      scope = {
        enabled = true,
        show_start = false,
        show_end = false,
        highlight = { "Function", "Label" },
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
