-- ~/.config/nvim/lua/config/lsp.lua
local lspconfig = require("lspconfig")
-- 1) Importa las capacidades completas de nvim-cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- 2) Lista de tus servidores
local servers = { "lua_ls", "html", "tailwindcss", "phpactor" }

-- 3) Para cada servidor, carga su módulo y pasa las mismas capabilities
for _, name in ipairs(servers) do
  local ok, setup = pcall(require, "lsp." .. name)
  if ok then
    setup(capabilities)
  else
    vim.notify("Error cargando configuración LSP para: " .. name,
               vim.log.levels.ERROR)
  end
end
