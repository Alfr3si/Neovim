---@module "neo-tree"
local neo_tree = require("neo-tree")

neo_tree.setup({
  close_if_last_window = true,  -- Se cierra si es la última ventana
  window = {
    position = "left",  -- Posición del panel
    width = 30,         -- Ancho de la ventana
    mappings = {
      ["<CR>"] = "open",        -- Abrir el archivo o directorio seleccionado
      ["q"]    = "close_window", -- Cerrar neo-tree
    },
  },
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,    -- Mostrar archivos ocultos
      hide_gitignored = false,  -- Mostrar archivos ignorados por git
    },
  },
    default_component_configs = {
     git_status = {
      symbols = {
        added     = "󰌴",
        modified  = "󱅄",
        deleted   = "󱅁",
        unstaged  = "",  -- Puedes cambiar este ícono por el que prefieras
        staged    = "✓",
        untracked = "?",
        ignored   = "◌",
        renamed   = "➜",
        conflict  = "",
      },
    },
  },
})

