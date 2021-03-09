local monokai = {
    base0 = "#1B2229",
    base1 = "#1c1f24",
    base2 = "#202328",
    base3 = "#23272e",
    base4 = "#3f444a",
    base5 = "#5B6268",
    base6 = "#73797e",
    base7 = "#9ca0a4",
    base8 = "#b1b1b1",
    bg = "#26292C",
    border = "#504945",
    bg_popup = "#333842",
    bg_highlight = "#2E323C",
    fg = "#f8f8f0",
    fg_alt = "#5B6268",
    white = "#f8f8f0",
    grey = "#8F908A",
    darkgrey = "#64645e",
    black = "#000000",
    pink = "#f92672",
    green = "#a6e22e",
    aqua = "#66d9ef",
    cyan = "#A1EFE4",
    yellow = "#e6db74",
    orange = "#fd971f",
    purple = "#ae81ff",
    red = "#e95678",
    purered = "#ff0000",
    darkred = "#5f0000",
    addfg = "#d7ffaf",
    addbg = "#5f875f",
    delfg = "#ff8b8b",
    delbg = "#f75f5f",
    changefg = "#d7d7ff",
    changebg = "#5f5f87",
    alternate_green = "#9EC400",
    alternate_yellow = "#E7C547",
    alternate_blue = "#7AA6DA",
    alternate_purple = "#B77EE0",
    alternate_cyan = "#54CED6",
    alternate_white = "#FFFFFF",
    none = "NONE"
}

function monokai.terminal_color()
    vim.g.terminal_color_0 = monokai.bg
    vim.g.terminal_color_1 = monokai.red
    vim.g.terminal_color_2 = monokai.green
    vim.g.terminal_color_3 = monokai.yellow
    vim.g.terminal_color_4 = monokai.aqua
    vim.g.terminal_color_5 = monokai.purple
    vim.g.terminal_color_6 = monokai.cyan
    vim.g.terminal_color_7 = monokai.white
    vim.g.terminal_color_8 = monokai.darkgrey
    vim.g.terminal_color_9 = monokai.pink
    vim.g.terminal_color_10 = monokai.alternate_green
    vim.g.terminal_color_11 = monokai.alternate_yellow
    vim.g.terminal_color_12 = monokai.alternate_blue
    vim.g.terminal_color_13 = monokai.alternate_purple
    vim.g.terminal_color_14 = monokai.alternate_cyan
    vim.g.terminal_color_15 = monokai.alternate_white
end

function monokai.highlight(group, color)
    local style = color.style and "gui=" .. color.style or "gui=NONE"
    local fg = color.fg and "guifg = " .. color.fg or "guifg = NONE"
    local bg = color.bg and "guibg = " .. color.bg or "guibg = NONE"
    local sp = color.sp and "guisp = " .. color.sp or ""
    vim.api.nvim_command("highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp)
end

function monokai.load_syntax()
    local syntax = {
        Normal = {
            fg = monokai.fg,
            bg = monokai.bg
        },
        Cursor = {
            fg = monokai.none,
            bg = monokai.none,
            style = "reverse"
        },
        ColorColumn = {
            fg = monokai.none,
            bg = monokai.bg
        },
        CursorLine = {
            fg = monokai.none,
            bg = monokai.bg_highlight
        },
        NonText = {
            fg = monokai.border
        },
        Visual = {
            fg = monokai.white,
            bg = monokai.base4
        },
        VisualNOS = {
            fg = monokai.white,
            bg = monokai.base4
        },
        Search = {
            fg = monokai.bg,
            bg = monokai.yellow
        },
        IncSearch = {
            fg = monokai.bg,
            bg = monokai.yellow
        },
        CursorLineNr = {
            fg = monokai.orange
        },
        MatchParen = {
            fg = monokai.pink,
            bg = monokai.none
        },
        Question = {
            fg = monokai.yellow
        },
        ModeMsg = {
            fg = monokai.fg,
            bg = monokai.none,
            style = "bold"
        },
        MoreMsg = {
            fg = monokai.fg,
            bg = monokai.none,
            style = "bold"
        },
        ErrorMsg = {
            fg = monokai.red,
            bg = monokai.none,
            style = "bold"
        },
        WarningMsg = {
            fg = monokai.yellow,
            bg = monokai.none,
            style = "bold"
        },
        VertSplit = {
            fg = monokai.border,
            bg = monokai.bg
        },
        LineNr = {
            fg = monokai.base4
        },
        SignColumn = {
            fg = monokai.fg,
            bg = monokai.bg
        },
        StatusLine = {
            fg = monokai.base8,
            bg = monokai.base2,
            style = monokai.none
        },
        StatusLineNC = {
            fg = monokai.grey,
            bg = monokai.base2,
            style = monokai.none
        },
        Tabline = {
            style = monokai.none
        },
        TabLineFill = {
            style = monokai.none
        },
        TabLineSel = {
            bg = monokai.bg_popup
        },
        SpellBad = {
            fg = monokai.red,
            bg = monokai.none,
            style = "undercurl"
        },
        SpellCap = {
            fg = monokai.purple,
            bg = monokai.none,
            style = "undercurl"
        },
        SpellRare = {
            fg = monokai.aqua,
            bg = monokai.none,
            style = "undercurl"
        },
        SpellLocal = {
            fg = monokai.pink,
            bg = monokai.none,
            style = "undercurl"
        },
        SpecialKey = {
            fg = monokai.pink
        },
        Title = {
            fg = monokai.yellow,
            style = "bold"
        },
        Directory = {
            fg = monokai.aqua,
            bg = monokai.none
        },
        DiffAdd = {
            fg = monokai.addfg,
            bg = monokai.addbg
        },
        DiffChange = {
            fg = monokai.delfg,
            bg = monokai.delbg
        },
        DiffDelete = {
            fg = monokai.changefg,
            bg = monokai.changebg
        },
        DiffText = {
            fg = monokai.black,
            bg = monokai.aqua
        },
        Folded = {
            fg = monokai.grey,
            bg = monokai.bg_highlight
        },
        FoldColumn = {
            fg = monokai.fg_alt,
            bg = monokai.black
        },
        Pmenu = {
            fg = monokai.fg,
            bg = monokai.bg_popup
        },
        PmenuSel = {
            fg = monokai.bg_popup,
            bg = monokai.orange
        },
        PmenuSelBold = {
            fg = monokai.bg_popup,
            bg = monokai.orange
        },
        PmenuThumb = {
            fg = monokai.purple,
            bg = monokai.green
        },
        PmenuSbar = {
            fg = monokai.none,
            bg = monokai.base4
        },
        Constant = {
            fg = monokai.aqua
        },
        Number = {
            fg = monokai.purple
        },
        Float = {
            fg = monokai.purple
        },
        Boolean = {
            fg = monokai.purple
        },
        Character = {
            fg = monokai.yellow
        },
        String = {
            fg = monokai.yellow
        },
        Type = {
            fg = monokai.aqua
        },
        Structure = {
            fg = monokai.aqua
        },
        StorageClass = {
            fg = monokai.aqua
        },
        Typedef = {
            fg = monokai.aqua
        },
        Identifier = {
            fg = monokai.white
        },
        Function = {
            fg = monokai.green
        },
        Statement = {
            fg = monokai.pink
        },
        Operator = {
            fg = monokai.pink
        },
        Label = {
            fg = monokai.yellow
        },
        Keyword = {
            fg = monokai.pink
        },
        PreProc = {
            fg = monokai.green
        },
        Include = {
            fg = monokai.pink
        },
        Define = {
            fg = monokai.pink
        },
        Macro = {
            fg = monokai.pink
        },
        PreCondit = {
            fg = monokai.pink
        },
        Special = {
            fg = monokai.white
        },
        SpecialChar = {
            fg = monokai.pink
        },
        Delimiter = {
            fg = monokai.fg
        },
        SpecialComment = {
            fg = monokai.grey
        },
        Tag = {
            fg = monokai.orange
        },
        Todo = {
            fg = monokai.orange
        },
        Comment = {
            fg = monokai.base6
        },
        Underlined = {
            fg = monokai.none,
            style = "underline"
        },
        Ignore = {
            fg = monokai.none
        },
        Error = {
            fg = monokai.red
        },
        Terminal = {
            fg = monokai.fg,
            bg = monokai.bg
        },
        EndOfBuffer = {
            fg = monokai.bg,
            bg = monokai.none
        },
        Conceal = {
            fg = monokai.grey,
            bg = monokai.none
        },
        vCursor = {
            fg = monokai.none,
            bg = monokai.none,
            style = "reverse"
        },
        iCursor = {
            fg = monokai.none,
            bg = monokai.none,
            style = "reverse"
        },
        lCursor = {
            fg = monokai.none,
            bg = monokai.none,
            style = "reverse"
        },
        CursorIM = {
            fg = monokai.none,
            bg = monokai.none,
            style = "reverse"
        },
        CursorColumn = {
            fg = monokai.none,
            bg = monokai.bg_highlight
        },
        Whitespace = {
            fg = monokai.base4
        },
        WildMenu = {
            fg = monokai.fg,
            bg = monokai.orange
        },
        NormalFloat = {
            fg = monokai.base8,
            bg = monokai.bg_highlight
        },
        QuickFixLine = {
            fg = monokai.purple,
            style = "bold"
        },
        Debug = {
            fg = monokai.orange
        },
        debugBreakpoint = {
            fg = monokai.bg,
            bg = monokai.red
        },
        Conditional = {
            fg = monokai.pink
        },
        Repeat = {
            fg = monokai.pink
        },
        Exception = {
            fg = monokai.pink
        }
    }
    return syntax
end

function monokai.load_plugin_syntax()
    local plugin_syntax = {
        TSFunction = {
            fg = monokai.green
        },
        TSMethod = {
            fg = monokai.green
        },
        TSKeywordFunction = {
            fg = monokai.pink
        },
        TSProperty = {
            fg = monokai.white
        },
        TSType = {
            fg = monokai.aqua
        },
        TSPunctBracket = {
            fg = monokai.white
        },
        dbui_tables = {
            fg = monokai.white
        },
        LspDiagnosticsSignError = {
            fg = monokai.red
        },
        LspDiagnosticsSignWarning = {
            fg = monokai.yellow
        },
        LspDiagnosticsSignInformation = {
            fg = monokai.white
        },
        LspDiagnosticsSignHint = {
            fg = monokai.aqua
        },
        LspDiagnosticsVirtualTextError = {
            fg = monokai.red
        },
        LspDiagnosticsVirtualTextWarning = {
            fg = monokai.yellow
        },
        LspDiagnosticsVirtualTextInformation = {
            fg = monokai.white
        },
        LspDiagnosticsVirtualTextHint = {
            fg = monokai.aqua
        },
        LspDiagnosticsUnderlineError = {
            style = "undercurl",
            sp = monokai.red
        },
        LspDiagnosticsUnderlineWarning = {
            style = "undercurl",
            sp = monokai.yellow
        },
        LspDiagnosticsUnderlineInformation = {
            style = "undercurl",
            sp = monokai.white
        },
        LspDiagnosticsUnderlineHint = {
            style = "undercurl",
            sp = monokai.aqua
        },
        CursorWord0 = {
            bg = monokai.white
        },
        CursorWord1 = {
            bg = monokai.white
        },
        NvimTreeFolderName = {
            fg = monokai.white
        },
        NvimTreeRootFolder = {
            fg = monokai.pink
        },
        NvimTreeSpecialFile = {
            fg = monokai.fg,
            bg = monokai.none,
            style = "NONE"
        },
        TelescopeBorder = {
            fg = monokai.aqua
        },
        TelescopePromptBorder = {
            fg = monokai.aqua
        }
    }
    return plugin_syntax
end

local async_load_plugin

async_load_plugin =
    vim.loop.new_async(
    vim.schedule_wrap(
        function()
            monokai.terminal_color()
            local syntax = monokai.load_plugin_syntax()
            for group, colors in pairs(syntax) do
                monokai.highlight(group, colors)
            end
            async_load_plugin:close()
        end
    )
)

function monokai.get_colors()
    return monokai
end

function monokai.colorscheme()
    vim.api.nvim_command("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.api.nvim_command("syntax reset")
    end
    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "monokai"
    local syntax = monokai.load_syntax()
    for group, colors in pairs(syntax) do
        monokai.highlight(group, colors)
    end
    async_load_plugin:send()
end

monokai.colorscheme()

return monokai
