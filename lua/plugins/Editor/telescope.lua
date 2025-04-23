return function()
local fb_actions = require "telescope".extensions.file_browser.actions

require('telescope').setup{
    defaults = {
        layout_config = {
            prompt_position = "top",
            width = 0.7,
            height = 0.8,
        },
        borderchars = {
            '─', '│', '─', '│', '╭', '╮', '╯', '╰'
        },
        preview = {
            hide_on_startup = false,
            timeout = 100,
        },
        sorting_strategy = "ascending",
       },
        pickers = {
           live_grep = {
              previewer = false,
            },
        },
        extensions = {
            file_browser = {
                hijack_netrw = true,
                hidden = false,
                grouped = true,
                respect_gitignore = false,
                previewer = false,
                initial_mode = "normal",
                mappings = {
                    ["n"] = {
                         ["<C-h>"] = fb_actions.toggle_hidden,
                     },
                },
                fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
                cas_mode = "smart_case",
            },
        },
    },
}
require('telescope').load_extension('file_browser')
end
