return function()
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local servers = { "lua_ls", "html", "tailwindcss", "phpactor" }

for _, name in ipairs(servers) do
  local ok, setup = pcall(require, "lsp." .. name)
  if ok then
    setup(capabilities)
  else
    vim.notify("Error cargando la configuración de LSP para: " .. name, vim.log.levels.ERROR)
  end
end
end
