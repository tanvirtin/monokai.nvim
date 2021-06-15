local vim = vim

local M = {}

M.palette_regular = {
    base1 = '#272a30',
    base2 = '#26292C',
    base3 = '#2E323C',
    base4 = '#333842',
    base5 = '#4d5154',
    base6 = '#9ca0a4',
    base7 = '#b1b1b1',
    border = '#a1b5b1',
    brown = "#504945",
    white = '#f8f8f0',
    grey = '#8F908A',
    black = '#000000',
    pink = '#f92672',
    green = '#a6e22e',
    aqua = '#66d9ef',
    yellow = '#e6db74',
    orange = '#fd971f',
    purple = '#ae81ff',
    red = '#e95678',
    diff_add_fg = '#6a8f1f',
    diff_add_bg = '#3d5213',
    diff_remove_fg = '#4a0f23',
    diff_remove_bg = '#a3214c',
    diff_change_fg = '#7AA6DA',
    diff_change_bg = '#537196',
    none = 'NONE'
}

M.palette_pro = {
    base1 = '#272a30',
    base2 = '#26292C',
    base3 = '#2E323C',
    base4 = '#333842',
    base5 = '#4d5154',
    base6 = '#9ca0a4',
    base7 = '#b1b1b1',
    border = '#a1b5b1',
    brown = "#504945",
    white = '#FFF1F3',
    grey = '#8F908A',
    black = '#000000',
    pink = '#FD6883',
    green = '#ADDA78',
    aqua = '#85DACC',
    yellow = '#F9CC6C',
    orange = '#F38D70',
    purple = '#A8A9EB',
    red = '#FD6883',
    diff_add_fg = '#6a8f1f',
    diff_add_bg = '#3d5213',
    diff_remove_fg = '#4a0f23',
    diff_remove_bg = '#a3214c',
    diff_change_fg = '#7AA6DA',
    diff_change_bg = '#537196',
    none = 'NONE'
}

M.highlight = function(group, color)
    local style = color.style and 'gui=' .. color.style or 'gui=NONE'
    local fg = color.fg and 'guifg = ' .. color.fg or 'guifg = NONE'
    local bg = color.bg and 'guibg = ' .. color.bg or 'guibg = NONE'
    local sp = color.sp and 'guisp = ' .. color.sp or ''
    vim.cmd('highlight ' .. group .. ' ' .. style .. ' ' .. fg .. ' ' .. bg .. ' ' .. sp)
end

M.load_syntax = function(palette)
    return {
        Normal = {
            fg = palette.white,
            bg = palette.none,
        },
        NormalFloat = {
            fg = palette.none,
            bg = palette.base1,
        },
        Pmenu = {
            fg = palette.white,
            bg = palette.base3,
        },
        PmenuSel = {
            fg = palette.base4,
            bg = palette.orange,
        },
        PmenuSelBold = {
            fg = palette.base4,
            bg = palette.orange,
        },
        PmenuThumb = {
            fg = palette.purple,
            bg = palette.green,
        },
        PmenuSbar = {
            fg = palette.none,
            bg = palette.base3,
        },
        Cursor = {
            fg = palette.none,
            bg = palette.none,
            style = 'reverse'
        },
        ColorColumn = {
            fg = palette.none,
            bg = palette.base3,
        },
        CursorLine = {
            fg = palette.none,
            bg = palette.base3,
        },
        NonText = {
            fg = palette.base5,
        },
        Visual = {
            bg = palette.base4,
        },
        VisualNOS = {
            bg = palette.base3,
        },
        Search = {
            fg = palette.base2,
            bg = palette.yellow,
        },
        IncSearch = {
            fg = palette.base2,
            bg = palette.yellow,
        },
        CursorLineNr = {
            fg = palette.orange,
            bg = palette.base2,
        },
        MatchParen = {
            fg = palette.pink,
            bg = palette.none,
        },
        Question = {
            fg = palette.yellow,
        },
        ModeMsg = {
            fg = palette.white,
            bg = palette.none,
            style = 'bold',
        },
        MoreMsg = {
            fg = palette.white,
            bg = palette.none,
            style = 'bold',
        },
        ErrorMsg = {
            fg = palette.red,
            bg = palette.none,
            style = 'bold',
        },
        WarningMsg = {
            fg = palette.yellow,
            bg = palette.none,
            style = 'bold',
        },
        VertSplit = {
            fg = palette.brown,
        },
        LineNr = {
            fg = palette.base5,
            bg = palette.base2
        },
        SignColumn = {
            fg = palette.white,
            bg = palette.base2,
        },
        StatusLine = {
            fg = palette.base7,
            bg = palette.base2,
            style = palette.none,
        },
        StatusLineNC = {
            fg = palette.grey,
            bg = palette.base2,
            style = palette.none,
        },
        Tabline = {
            style = palette.none,
        },
        TabLineFill = {
            style = palette.none,
        },
        TabLineSel = {
            bg = palette.base4,
        },
        SpellBad = {
            fg = palette.red,
            bg = palette.none,
            style = 'undercurl',
        },
        SpellCap = {
            fg = palette.purple,
            bg = palette.none,
            style = 'undercurl',
        },
        SpellRare = {
            fg = palette.aqua,
            bg = palette.none,
            style = 'undercurl',
        },
        SpellLocal = {
            fg = palette.pink,
            bg = palette.none,
            style = 'undercurl',
        },
        SpecialKey = {
            fg = palette.pink,
        },
        Title = {
            fg = palette.yellow,
            style = 'bold',
        },
        Directory = {
            fg = palette.aqua,
            bg = palette.none,
        },
        DiffAdd = {
            fg = palette.diff_add_fg,
            bg = palette.diff_add_bg,
        },
        DiffChange = {
            fg = palette.diff_remove_fg,
            bg = palette.diff_remove_bg,
        },
        DiffDelete = {
            fg = palette.diff_change_fg,
            bg = palette.diff_change_bg,
        },
        DiffText = {
            fg = palette.black,
            bg = palette.aqua,
        },
        Folded = {
            fg = palette.grey,
            bg = palette.base3,
        },
        FoldColumn = {
            fg = palette.white,
            bg = palette.black,
        },
        Constant = {
            fg = palette.aqua,
        },
        Number = {
            fg = palette.purple,
        },
        Float = {
            fg = palette.purple,
        },
        Boolean = {
            fg = palette.purple,
        },
        Character = {
            fg = palette.yellow,
        },
        String = {
            fg = palette.yellow,
        },
        Type = {
            fg = palette.aqua,
        },
        Structure = {
            fg = palette.aqua,
        },
        StorageClass = {
            fg = palette.aqua,
        },
        Typedef = {
            fg = palette.aqua,
        },
        Identifier = {
            fg = palette.white,
        },
        Function = {
            fg = palette.green,
        },
        Statement = {
            fg = palette.pink,
        },
        Operator = {
            fg = palette.pink,
        },
        Label = {
            fg = palette.yellow,
        },
        Keyword = {
            fg = palette.pink,
        },
        PreProc = {
            fg = palette.green,
        },
        Include = {
            fg = palette.pink,
        },
        Define = {
            fg = palette.pink,
        },
        Macro = {
            fg = palette.pink,
        },
        PreCondit = {
            fg = palette.pink,
        },
        Special = {
            fg = palette.white,
        },
        SpecialChar = {
            fg = palette.pink,
        },
        Delimiter = {
            fg = palette.white,
        },
        SpecialComment = {
            fg = palette.grey,
        },
        Tag = {
            fg = palette.orange,
        },
        Todo = {
            fg = palette.orange,
        },
        Comment = {
            fg = palette.base6,
        },
        Underlined = {
            fg = palette.none,
            style = 'underline',
        },
        Ignore = {
            fg = palette.none,
        },
        Error = {
            fg = palette.red,
        },
        Terminal = {
            fg = palette.white,
            bg = palette.base2,
        },
        EndOfBuffer = {
            fg = palette.base2,
            bg = palette.none,
        },
        Conceal = {
            fg = palette.grey,
            bg = palette.none,
        },
        vCursor = {
            fg = palette.none,
            bg = palette.none,
            style = 'reverse',
        },
        iCursor = {
            fg = palette.none,
            bg = palette.none,
            style = 'reverse',
        },
        lCursor = {
            fg = palette.none,
            bg = palette.none,
            style = 'reverse',
        },
        CursorIM = {
            fg = palette.none,
            bg = palette.none,
            style = 'reverse',
        },
        CursorColumn = {
            fg = palette.none,
            bg = palette.base3,
        },
        Whitespace = {
            fg = palette.base3,
        },
        WildMenu = {
            fg = palette.white,
            bg = palette.orange,
        },
        QuickFixLine = {
            fg = palette.purple,
            style = 'bold',
        },
        Debug = {
            fg = palette.orange,
        },
        debugBreakpoint = {
            fg = palette.base2,
            bg = palette.red,
        },
        Conditional = {
            fg = palette.pink,
        },
        Repeat = {
            fg = palette.pink,
        },
        Exception = {
            fg = palette.pink,
        }
    }
end

M.load_plugin_syntax = function(palette)
    return {
        TSFunction = {
            fg = palette.green,
        },
        TSMethod = {
            fg = palette.green,
        },
        TSKeywordFunction = {
            fg = palette.pink,
        },
        TSProperty = {
            fg = palette.white,
        },
        TSType = {
            fg = palette.aqua,
        },
        TSPunctBracket = {
            fg = palette.white,
        },
        dbui_tables = {
            fg = palette.white,
        },
        LspDiagnosticsSignError = {
            fg = palette.red,
        },
        LspDiagnosticsSignWarning = {
            fg = palette.yellow,
        },
        LspDiagnosticsSignInformation = {
            fg = palette.white,
        },
        LspDiagnosticsSignHint = {
            fg = palette.aqua,
        },
        LspDiagnosticsVirtualTextError = {
            fg = palette.red,
        },
        LspDiagnosticsVirtualTextWarning = {
            fg = palette.yellow,
        },
        LspDiagnosticsVirtualTextInformation = {
            fg = palette.white,
        },
        LspDiagnosticsVirtualTextHint = {
            fg = palette.aqua,
        },
        LspDiagnosticsUnderlineError = {
            style = 'undercurl',
            sp = palette.red,
        },
        LspDiagnosticsUnderlineWarning = {
            style = 'undercurl',
            sp = palette.yellow,
        },
        LspDiagnosticsUnderlineInformation = {
            style = 'undercurl',
            sp = palette.white,
        },
        LspDiagnosticsUnderlineHint = {
            style = 'undercurl',
            sp = palette.aqua,
        },
        CursorWord0 = {
            bg = palette.white,
            fg = palette.black,
        },
        CursorWord1 = {
            bg = palette.white,
            fg = palette.black,
        },
        NvimTreeFolderName = {
            fg = palette.white,
        },
        NvimTreeRootFolder = {
            fg = palette.pink,
        },
        NvimTreeSpecialFile = {
            fg = palette.white,
            bg = palette.none,
            style = 'NONE',
        },
        TelescopeBorder = {
            fg = palette.border
        },
        TelescopePromptBorder = {
            fg = palette.border
        }
    }
end

M.setup = function(palette)
    vim.cmd('hi clear')
    if vim.fn.exists('syntax_on') then
        vim.cmd('syntax reset')
    end
    vim.o.background = 'dark'
    vim.o.termguicolors = true
    vim.g.colors_name = 'monokai'
    local used_palette = palette or M.palette_regular
    local syntax = M.load_syntax(used_palette)
    for group, colors in pairs(syntax) do
        M.highlight(group, colors)
    end
    local async_load_plugin = nil
    async_load_plugin = vim.loop.new_async(
        vim.schedule_wrap(
            function()
                local plugin_syntax = M.load_plugin_syntax(used_palette)
                for group, colors in pairs(plugin_syntax) do
                    M.highlight(group, colors)
                end
                async_load_plugin:close()
            end
        )
    )
    async_load_plugin:send()
end

return M
