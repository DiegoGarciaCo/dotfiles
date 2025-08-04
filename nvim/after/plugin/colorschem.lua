require("catppuccin").setup({
    flavour = "mocha", -- mocha, macchiato, frappe, latte
    transparent_background = true,
    term_colors = true,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false,
    no_bold = false,
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = { "italic" },
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        neotree = {
            enabled = true,
            show_root = true,
            transparent_panel = true,
        },
        telescope = {
            enabled = true,
            style = "nvchad",
        },
        mini = {
            enabled = true,
            indentscope_color = "",
        },
    },
    custom_highlights = function(colors)
        return {
            -- UI elements
            Normal = { bg = "NONE" },
            NormalFloat = { bg = "NONE" },
            NonText = { fg = colors.overlay0, bg = "NONE" },
            EndOfBuffer = { fg = colors.overlay0, bg = "NONE" },
            SignColumn = { bg = "NONE" },
            Pmenu = { bg = "NONE" },
            FloatBorder = { fg = colors.blue, bg = "NONE" },
            TabLine = { bg = "NONE" },
            -- Custom syntax colors
            Comment = { fg = "#94E2D5", style = { "italic" } }, -- Aqua-like color for comments
            Keyword = { fg = "#F5C2E7", style = { "italic" } }, -- Pink for keywords
            String = { fg = "#A6E3A1" }, -- Green for strings
            Function = { fg = "#89B4FA", style = { "bold" } }, -- Blue for functions
        }
    end,
})

vim.cmd.colorscheme "catppuccin"
