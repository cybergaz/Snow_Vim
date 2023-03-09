vim.g.material_style = "deep ocean"

local status, var = pcall(require, "material")
if not status then
	print("something wrong with material file")
	return
end

var.setup({

	contrast = {
		terminal = false, -- Enable contrast for the built-in terminal
		sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
		floating_windows = true, -- Enable contrast for floating windows
		cursor_line = true, -- Enable darker background for the cursor line
		non_current_windows = false, -- Enable darker background for non-current windows
		filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
	},

	styles = { -- Give comments style such as bold, italic, underline etc.
		comments = { italic = true
		},
		strings = { --[[ bold = true ]]
		},
		keywords = { --[[ underline = true ]]
		},
		functions = { bold = true --[[, undercurl = true ]]
		},
		variables = { },
		operators = { },
		types = { },
	},

	plugins = { -- Uncomment the plugins that you use to highlight them
		-- Available plugins:
		-- "dap",
		-- "dashboard",
		-- "gitsigns",
		-- "hop",
		-- "indent-blankline",
		-- "lspsaga",
		-- "mini",
		-- "neogit",
		-- "nvim-cmp",
		-- "nvim-navic",
		-- "nvim-tree",
		-- "nvim-web-devicons",
		-- "sneak",
		-- "telescope",
		-- "trouble",
		-- "which-key",
	},

	disable = {
		colored_cursor = true, -- Disable the colored cursor
		borders = false, -- Disable borders between verticaly split windows
		background = true, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
		term_colors = false, -- Prevent the theme from setting terminal colors
		eob_lines = false, -- Hide the end-of-buffer lines
	},

	high_visibility = {
		lighter = false, -- Enable higher contrast text for lighter style
		darker = true, -- Enable higher contrast text for darker style
	},

	lualine_style = "stealth", -- Lualine style ( can be 'stealth' or 'default' )

	async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

    -- To see the available colors, see lua/material/colors/init.lua
    custom_colors = function(colors)
        -- colors.editor.bg           = "#0F111A"
        -- colors.editor.bg_alt       = "#090B10"
        -- colors.editor.fg           = "#A6ACCD"
        colors.editor.selection    = "#3A465A"
        colors.syntax.comments     = "#464B5D"
        colors.editor.contrast     = "#090B10"
        colors.editor.active       = "#1A1C25"
        colors.editor.border       = "#232637"
        colors.editor.line_numbers = "#3B3F51"
        colors.editor.highlight    = "#1F2233"
        colors.editor.disabled     = "#464B5D"
        colors.editor.accent       = "#246AF3"

        colors.syntax.string       = "#00FFA3"
        colors.syntax.variable = colors.editor.fg
        colors.syntax.field    = colors.editor.fg
        colors.syntax.keyword  = "#F7525F"
        colors.syntax.value    = "#F06B57"
        colors.syntax.operator = "#e32283"
        colors.syntax.type     = "#09b3a4"
        colors.syntax.fn       = "#4ae8db"
        colors.main.blue       = "#1169F1"
        colors.main.cyan = "#4B9BE5"
        colors.main.green = "#00FFA3"

        -- colors.main.purple = "#ffffff"
        -- colors.lsp.error = "#SOME_COLOR"
    end,

	custom_highlights = {
        -- LineNr = { bg = '#FF0001' },
        -- CursorLine = { fg = colors.editor.constrast , underline = true },

        -- This is a list of possible values
        -- YourHighlightGroup = {
        --     fg = "#SOME_COLOR", -- foreground color
        --     bg = "#SOME_COLOR", -- background color
        --     sp = "#SOME_COLOR", -- special color (for colored underlines, undercurls...)
        --     bold = false, -- make group bold
        --     italic = false, -- make group italic
        --     underline = false, -- make group underlined
        --     undercurl = false, -- make group undercurled
        --     underdot = false, -- make group underdotted
        --     underdash = false, -- make group underslashed
        --     striketrough = false, -- make group striked trough
        --     reverse = false, -- reverse the fg and bg colors
        --     link = "SomeOtherGroup" -- link to some other highlight group
        -- }
    }, -- Overwrite highlights with your own
}
)

local status, _ = pcall(vim.cmd, "colorscheme material")
if not status then
	print("material colorscheme is not installed")
	return
end

