--this file load your keymaps to Neovim

--Telescope
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory oil <!--Good--> " })
vim.keymap.set("n", "<leader>ff", "<CMD>Telescope file_browser<CR>", { desc = "Open File explorer" })
vim.api.nvim_set_keymap('n', '<leader>g', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], { noremap = true, silent = true })

--Tabbline
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-q>', ':bd<CR>', { noremap = true, silent = true })


vim.keymap.set("n", "-", function()
    require("oil").open_float()
end, { desc = "Abrir Oil en ventana flotante" })

--Neotree
vim.keymap.set('n', '<A-n>', ':Neotree toggle<CR>', { noremap = true, silent = true })

