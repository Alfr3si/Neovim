local ls = require "luasnip"
local types = require "luasnip.util.types"
local s = ls.snippet
local t = ls.text_node  -- This function is for insert  text
local i = ls.insert_node -- this function is for insert mark of posicion

-- Asegúrate de que M esté definido correctamente
local M = {}

function M.setup()
    -- config to LuaSnip
    ls.config.set_config{
        history = true,
        updateevents = "TextChanged, TextChangedI",
        enable_autosnippets = true,
        ext_opts = {
            [types.choiceNode] = {
                active = {
                    virt_text = { { "<- choice", "Error" } },
                },
            },
        },
    }

  local html5_snippet = s("html5", {
    t({
      "<!DOCTYPE html>",
      "<html lang=\"en\">",
      "  <head>",
      "    <meta charset=\"UTF-8\">",
      "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">",
      "    <title>" .. "Page Title" .. "</title>", -- o puedes usar i(1, "Page Title")
      "  </head>",
      "  <body>",
      "    ",
      "  </body>",
      "</html>"
    })
  })
    ls.add_snippets("html", { html5_snippet})
    ls.add_snippets("php", { html5_snippet})

-- Definir el snippet HTML básico con indentación y marcador de posición para el título
    -- Keymaps para snippets
    vim.keymap.set({ "i", "s"}, "<c-k>", function()
        if ls.expand_or_jumpable() then
            ls.expand_or_jump()
        end
    end, { silent = true })

    vim.keymap.set({ "i", "s"}, "<c-j>", function()
        if ls.jumpable(-1) then
            ls.jump(-1)
        end
    end, { silent = true })

    vim.keymap.set("i", "<c-l>", function()
        if ls.choice_active() then
            ls.change_choice(1)
        end
    end)
end

-- Asegúrate de que 'M' sea devuelto correctamente
return M
