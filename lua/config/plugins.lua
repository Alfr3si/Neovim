--this file is for load the plugins of Neovim
return{
    {
        "catppuccin/nvim",
        lazy = false,
        priority = 1000,
           config = function()
            require("plugins.UI.colorscheme")
        end

    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        config = function()
            require("plugins.UI.lualine")
        end
    },
    {
        "kdheepak/tabline.nvim",
        config = function()
            require("plugins.UI.tabline")
        end
    },
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        config = function()
            require("plugins.UI.snacks")
        end
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies =
        {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons",
          "MunifTanjim/nui.nvim",
        },
        lazy = false,
        config = function()
            require("plugins.UI.neotree")
        end
    },
    {
        "tpope/vim-fugitive",
        cmd = { "G", "Git"},
    },
    {
        "norcalli/nvim-colorizer.lua",
        lazy = false,
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("plugins.Code.gitsigns")
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = "VeryLazy",
        config = function()
            require("plugins.Code.treesitter")
        end
    },
    {
        "williamboman/mason.nvim",
        config = function()
            require("plugins.Code.mason")
        end
    },
    --Edit this lines for add Server-Languages
    {
        "neovim/nvim-lspconfig",
        dependencies = { "williamboman/mason.nvim",},
        config = function()
            require("plugins.Code.lsp")
        end
    },
    {
        "hrsh7th/nvim-cmp",
            dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-git",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "windwp/nvim-autopairs",
        },
        event = "VeryLazy",
        main = "plugins.Code.cmp",
        config = true,
    },
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        main = "plugins.Code.luasnip",
        config = true,
    },
    {
        "stevearc/oil.nvim",
        opts = {},
        dependencies = { { "echasnovski/mini.icons", opts = {} } },
        lazy = false,
        config = function()
            require("plugins.Editor.oil")
        end
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-file-browser.nvim",
        {"nvim-telescope/telescope-fzf-native.nvim", build = 'make'},
    },
        event = "VeryLazy",
        config = function()
            require("plugins.Editor.telescope")
        end
    },
}

