require('tabline').setup {
    options = {
        section_left = { 'buffers', 'close'},
        section_middle = { 'tabs'},
        section_right = { 'line_number'},
        separator = { left = '', right = ''},
        component_separators = {'', ''},
        padding = 2,
    },
    tabline = {
        show_tab_count = true,
        close_button = true,
    },

}
