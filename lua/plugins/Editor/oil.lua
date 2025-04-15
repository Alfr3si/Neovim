require("oil").setup({
    default_file_explorer = true,
    columns = {
        "icon",
    },
    buf_options = {
        buflisted = false,
        bufhidden = "hide",
    },
    delete_to_trash = false,
    skip_confirm_for_simple_edits = false,
    preview_split = "left",
    show_hidden = false,
    keymaps = {
        ["g?"] = {"actions.show_help", mode = "n"},
        ["-"] = { "actions.parent", mode = "n" },
    },
    float = {
        max_width = 48,
        max_height = 20,
        border = "rounded",
    },
    use_default_keymaps = true,
})
