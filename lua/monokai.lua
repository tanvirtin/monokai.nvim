local vim = vim

local M = {}

M.classic = {
  name = 'monokai',
  base0 = '#222426',
  base1 = '#272a30',
  base2 = '#26292C',
  base3 = '#2E323C',
  base4 = '#333842',
  base5 = '#4d5154',
  base6 = '#9ca0a4',
  base7 = '#b1b1b1',
  base8 = '#e3e3e1',
  border = '#a1b5b1',
  brown = '#504945',
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
  diff_add = '#3d5213',
  diff_remove = '#4a0f23',
  diff_change = '#27406b',
  diff_text = '#23324d',
}

M.pro = {
  name = 'monokai_pro',
  base0 = '#222426',
  base1 = '#211F22',
  base2 = '#26292C',
  base3 = '#2E323C',
  base4 = '#333842',
  base5 = '#4d5154',
  base6 = '#72696A',
  base7 = '#B1B1B1',
  base8 = '#e3e3e1',
  border = '#A1B5B1',
  brown = '#504945',
  white = '#FFF1F3',
  grey = '#72696A',
  black = '#000000',
  pink = '#FF6188',
  green = '#A9DC76',
  aqua = '#78DCE8',
  yellow = '#FFD866',
  orange = '#FC9867',
  purple = '#AB9DF2',
  red = '#FD6883',
  diff_add = '#3d5213',
  diff_remove = '#4a0f23',
  diff_change = '#27406b',
  diff_text = '#23324d',
}

M.soda = {
  name = 'monokai_soda',
  base0 = '#222426',
  base1 = '#211F22',
  base2 = '#26292C',
  base3 = '#2E323C',
  base4 = '#333842',
  base5 = '#4d5154',
  base6 = '#72696A',
  base7 = '#B1B1B1',
  base8 = '#e3e3e1',
  border = '#A1B5B1',
  brown = '#504945',
  white = '#f6f6ec',
  grey = '#72696A',
  black = '#000000',
  pink = '#f3005f',
  green = '#97e023',
  aqua = '#78DCE8',
  yellow = '#dfd561',
  orange = '#fa8419',
  purple = '#9c64fe',
  red = '#f3005f',
  diff_add = '#3d5213',
  diff_remove = '#4a0f23',
  diff_change = '#27406b',
  diff_text = '#23324d',
}

M.ristretto = {
  name = 'monokai_ristretto',
  base0 = '#191515',
  base1 = '#211c1c',
  base2 = '#2c2525',
  base3 = '#403838',
  base4 = '#5b5353',
  base5 = '#72696a',
  base6 = '#8c8384',
  base7 = '#c3b7b8',
  base8 = '#fff1f3',
  border = '#A1B5B1',
  brown = '#352e2e',
  white = '#fff1f3',
  grey = '#72696a',
  black = '#000000',
  pink = '#FF6188',
  green = '#adda78',
  aqua = '#85dacc',
  yellow = '#f9cc6c',
  orange = '#f38d70',
  purple = '#a8a9eb',
  red = '#fd6883',
  diff_add = '#527728',
  diff_remove = '#842335',
  diff_change = '#247c6e',
  diff_text = '#23324d',
}

local function remove_italics(config, colors)
  if not config.italics and colors.style == 'italic' then
    colors.style = nil
  end
  return colors
end

local function highlighter(config)
  return function(group, color)
    color = remove_italics(config, color)
    local style = color.style and 'gui=' .. color.style or 'gui=NONE'
    local fg = color.fg and 'guifg = ' .. color.fg or 'guifg = NONE'
    local bg = color.bg and 'guibg = ' .. color.bg or 'guibg = NONE'
    local sp = color.sp and 'guisp = ' .. color.sp or ''
  vim.cmd(
    'highlight ' .. group .. ' ' .. style .. ' ' .. fg .. ' ' .. bg .. ' ' .. sp
  )
  end
end

M.load_syntax = function(palette)
  return {
    Normal = {
      fg = palette.white,
      bg = palette.base2,
    },
    NormalFloat = {
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
      bg = palette.base3,
    },
    Cursor = {
      style = 'reverse',
    },
    ColorColumn = {
      bg = palette.base3,
    },
    CursorLine = {
      bg = palette.base3,
    },
    NonText = { -- used for "eol", "extends" and "precedes" in listchars
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
      bg = palette.orange,
    },
    CursorLineNr = {
      fg = palette.orange,
      bg = palette.base2,
    },
    MatchParen = {
      fg = palette.pink,
    },
    Question = {
      fg = palette.yellow,
    },
    ModeMsg = {
      fg = palette.white,
      style = 'bold',
    },
    MoreMsg = {
      fg = palette.white,
      style = 'bold',
    },
    ErrorMsg = {
      fg = palette.red,
      style = 'bold',
    },
    WarningMsg = {
      fg = palette.yellow,
      style = 'bold',
    },
    VertSplit = {
      fg = palette.brown,
    },
    LineNr = {
      fg = palette.base5,
      bg = palette.base2,
    },
    SignColumn = {
      fg = palette.white,
      bg = palette.base2,
    },
    StatusLine = {
      fg = palette.base7,
      bg = palette.base3,
    },
    StatusLineNC = {
      fg = palette.grey,
      bg = palette.base3,
    },
    Tabline = {},
    TabLineFill = {},
    TabLineSel = {
      bg = palette.base4,
    },
    SpellBad = {
      fg = palette.red,
      style = 'undercurl',
    },
    SpellCap = {
      fg = palette.purple,
      style = 'undercurl',
    },
    SpellRare = {
      fg = palette.aqua,
      style = 'undercurl',
    },
    SpellLocal = {
      fg = palette.pink,
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
    },
    DiffAdd = {
      bg = palette.diff_add,
    },
    DiffDelete = {
      bg = palette.diff_remove,
    },
    DiffChange = {
      bg = palette.diff_change,
    },
    DiffText = {
      bg = palette.diff_text,
    },
    diffAdded = {
      fg = palette.green,
    },
    diffRemoved = {
      fg = palette.pink,
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
      style = 'italic',
    },
    Statement = {
      fg = palette.pink,
    },
    Operator = {
      fg = palette.pink,
    },
    Label = {
      fg = palette.pink,
    },
    Keyword = {
      fg = palette.pink,
      style = 'italic',
    },
    PreProc = {
      fg = palette.green,
    },
    Include = {
      fg = palette.aqua,
      style = 'italic',
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
      style = 'italic',
    },
    Tag = {
      fg = palette.orange,
    },
    Todo = {
      fg = palette.orange,
    },
    Comment = {
      fg = palette.base6,
      style = 'italic',
    },
    Underlined = {
      style = 'underline',
    },
    Ignore = {},
    Error = {
      fg = palette.red,
    },
    Terminal = {
      fg = palette.white,
      bg = palette.base2,
    },
    EndOfBuffer = {
      fg = palette.base2,
    },
    Conceal = {
      fg = palette.grey,
    },
    vCursor = {
      style = 'reverse',
    },
    iCursor = {
      style = 'reverse',
    },
    lCursor = {
      style = 'reverse',
    },
    CursorIM = {
      style = 'reverse',
    },
    CursorColumn = {
      bg = palette.base3,
    },
    Whitespace = { -- used for "nbsp", "space", "tab" and "trail" in listchars
      fg = palette.base5,
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
    },
  }
end

M.load_plugin_syntax = function(palette)
  local math_group = {
    fg = palette.yellow,
  }
  local strike_group = {
    fg = palette.grey,
  }
  local todo_group = {
    fg = palette.aqua,
  }
  local uri_group = {
    fg = palette.aqua,
    style = 'underline',
  }
  return {
    ["@annotation"] = {
      fg = palette.green,
    },
    ["@attribute"] = {
      fg = palette.green,
    },
    ["@boolean"] = {
      fg = palette.purple,
    },
    ["@character"] = {
      fg = palette.yellow,
    },
    ["@character.special"] = {
      fg = palette.purple,
    },
    ["@comment"] = {
      fg = palette.base6,
      style = 'italic',
    },
    ["@conceal"] = {
      fg = palette.grey,
    },
    ["@conditional"] = {
      fg = palette.pink,
    },
    ["@conditional.ternary"] = {
      fg = palette.pink,
    },
    ["@constant"] = {
      fg = palette.aqua,
    },
    ["@constant.builtin"] = {
      fg = palette.purple,
    },
    ["@constant.macro"] = {
      fg = palette.purple,
    },
    ["@constructor"] = {
      fg = palette.aqua,
    },
    ["@debug"] = {
      fg = palette.pink,
    },
    ["@define"] = {
      fg = palette.aqua,
    },
    ["@definition"] = {
      fg = palette.green,
    },
    ["@definition.associated"] = {
      fg = palette.green,
    },
    ["@definition.constant"] = {
      fg = palette.green,
    },
    ["@definition.enum"] = {
      fg = palette.green,
    },
    ["@definition.field"] = {
      fg = palette.green,
    },
    ["@definition.function"] = {
      fg = palette.green,
    },
    ["@definition.import"] = {
      fg = palette.white,
    },
    ["@definition.macro"] = {
      fg = palette.green,
    },
    ["@definition.method"] = {
      fg = palette.green,
    },
    ["@definition.namespace"] = {
      fg = palette.white,
    },
    ["@definition.parameter"] = {
      fg = palette.orange,
    },
    ["@definition.type"] = {
      fg = palette.green,
    },
    ["@definition.var"] = {
      fg = palette.green,
    },
    ["@error"] = {
      fg = palette.red,
    },
    ["@exception"] = {
      fg = palette.pink,
    },
    ["@field"] = {
      fg = palette.white,
    },
    ["@float"] = {
      fg = palette.purple,
    },
    ["@function"] = {
      fg = palette.green,
      style = 'italic',
    },
    ["@function.builtin"] = {
      fg = palette.aqua,
    },
    ["@function.call"] = {
      fg = palette.white,
    },
    ["@function.macro"] = {
      fg = palette.green,
      style = 'italic',
    },
    ["@include"] = {
      fg = palette.aqua,
      style = 'italic',
    },
    ["@keyword"] = {
      fg = palette.pink,
      style = 'italic',
    },
    ["@keyword.function"] = {
      fg = palette.aqua,
      style = 'italic',
    },
    ["@keyword.operator"] = {
      fg = palette.pink,
    },
    ["@keyword.return"] = {
      fg = palette.pink,
    },
    ["@label"] = {
      fg = palette.pink,
    },
    ["@math"] = math_group,
    ["@method"] = {
      fg = palette.green,
    },
    ["@method.call"] = {
      fg = palette.white,
    },
    ["@namespace"] = {
      fg = palette.purple,
    },
    -- ["@nospell"] = {},
    ["@number"] = {
      fg = palette.purple,
    },
    ["@operator"] = {
      fg = palette.pink,
    },
    ["@parameter"] = {
      fg = palette.orange,
    },
    ["@parameter.reference"] = {
      fg = palette.white,
    },
    ["@preproc"] = {
      fg = palette.green,
    },
    ["@property"] = {
      fg = palette.white,
    },
    ["@punctuation.bracket"] = {
      fg = palette.white,
    },
    ["@punctuation.delimiter"] = {
      fg = palette.white,
    },
    ["@punctuation.special"] = {
      fg = palette.pink,
    },
    ["@reference"] = {
      fg = palette.white,
    },
    ["@repeat"] = {
      fg = palette.pink,
    },
    ["@scope"] = {
      fg = palette.white,
    },
    -- ["@spell"] = {},
    ["@storageclass"] = {
      fg = palette.aqua,
    },
    ["@storageclass.lifetime"] = {
      fg = palette.aqua,
    },
    ["@strike"] = strike_group,
    ["@string"] = {
      fg = palette.yellow,
    },
    ["@string.escape"] = {
      fg = palette.purple,
    },
    ["@string.regex"] = {
      fg = palette.purple,
    },
    ["@string.special"] = {
      fg = palette.purple,
    },
    ["@symbol"] = {
      fg = palette.purple,
    },
    ["@tag"] = {
      fg = palette.pink,
    },
    ["@tag.attribute"] = {
      fg = palette.green,
    },
    ["@tag.delimiter"] =  {
      fg = palette.white,
    },
    ["@text"] = {
      fg = palette.green,
    },
    ["@text.danger"] = {
      fg = palette.red,
      style = 'bold',
    },
    ["@text.diff.add"] = {
      fg = palette.diff_add,
    },
    ["@text.diff.delete"] = {
      fg = palette.diff_remove,
    },
    ["@text.emphasis"] = {
      style = 'bold',
    },
    ["@text.environment"] = {
      fg = palette.purple,
    },
    ["@text.environment.name"] = {
      fg = palette.aqua,
    },
    ["@text.literal"] = {
      fg = palette.yellow,
    },
    ["@text.math"] = math_group,
    ["@text.note"] = {
      fg = palette.aqua,
      style = 'bold',
    },
    ["@text.quote"] = {
      fg = palette.grey,
    },
    ["@text.reference"] = {
      fg = palette.orange,
      style = 'italic',
    },
    ["@text.strike"] = strike_group,
    ["@text.strong"] = {
      style = 'bold',
    },
    ["@text.title"] = {
      fg = palette.yellow,
      style = 'bold',
    },
    ["@text.todo"] = todo_group,
    ["@text.underline"] = {
      style = 'underline',
    },
    ["@text.uri"] = uri_group,
    ["@text.warning"] = {
      fg = palette.yellow,
      style = 'bold',
    },
    ["@todo"] = todo_group,
    ["@type"] = {
      fg = palette.aqua,
    },
    ["@type.builtin"] = {
      fg = palette.aqua,
    },
    ["@type.definition"] = {
      fg = palette.aqua,
    },
    ["@type.qualifier"] = {
      fg = palette.pink,
    },
    ["@uri"] = uri_group,
    ["@variable"] = {
      fg = palette.white,
    },
    ["@variable.builtin"] = {
      fg = palette.orange,
    },
    dbui_tables = {
      fg = palette.white,
    },
    DiagnosticSignError = {
      fg = palette.red,
    },
    DiagnosticSignWarn = {
      fg = palette.yellow,
    },
    DiagnosticSignInfo = {
      fg = palette.white,
    },
    DiagnosticSignHint = {
      fg = palette.aqua,
    },
    DiagnosticVirtualTextError = {
      fg = palette.red,
    },
    DiagnosticVirtualTextWarn = {
      fg = palette.yellow,
    },
    DiagnosticVirtualTextInfo = {
      fg = palette.white,
    },
    DiagnosticVirtualTextHint = {
      fg = palette.aqua,
    },
    DiagnosticUnderlineError = {
      style = 'undercurl',
      sp = palette.red,
    },
    DiagnosticUnderlineWarn = {
      style = 'undercurl',
      sp = palette.yellow,
    },
    DiagnosticUnderlineInfo = {
      style = 'undercurl',
      sp = palette.white,
    },
    DiagnosticUnderlineHint = {
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
      style = 'NONE',
    },

    -- Telescope
    TelescopeBorder = {
      fg = palette.base7,
    },
    TelescopeNormal = {
      fg = palette.base8,
      bg = palette.base0,
    },
    TelescopeSelection = {
      fg = palette.white,
      style = 'bold',
    },
    TelescopeSelectionCaret = {
      fg = palette.green,
    },
    TelescopeMultiSelection = {
      fg = palette.pink,
    },
    TelescopeMatching = {
      fg = palette.aqua,
    },

    -- hrsh7th/nvim-cmp
    CmpDocumentation = { fg = palette.white, bg = palette.base1 },
    CmpDocumentationBorder = { fg = palette.white, bg = palette.base1 },

    CmpItemAbbr = { fg = palette.white },
    CmpItemAbbrMatch = { fg = palette.aqua },
    CmpItemAbbrMatchFuzzy = { fg = palette.aqua },

    CmpItemKindDefault = { fg = palette.white },
    CmpItemMenu = { fg = palette.base6 },

    CmpItemKindKeyword = { fg = palette.pink },
    CmpItemKindVariable = { fg = palette.pink },
    CmpItemKindConstant = { fg = palette.pink },
    CmpItemKindReference = { fg = palette.pink },
    CmpItemKindValue = { fg = palette.pink },

    CmpItemKindFunction = { fg = palette.aqua },
    CmpItemKindMethod = { fg = palette.aqua },
    CmpItemKindConstructor = { fg = palette.aqua },

    CmpItemKindClass = { fg = palette.orange },
    CmpItemKindInterface = { fg = palette.orange },
    CmpItemKindStruct = { fg = palette.orange },
    CmpItemKindEvent = { fg = palette.orange },
    CmpItemKindEnum = { fg = palette.orange },
    CmpItemKindUnit = { fg = palette.orange },

    CmpItemKindModule = { fg = palette.yellow },

    CmpItemKindProperty = { fg = palette.green },
    CmpItemKindField = { fg = palette.green },
    CmpItemKindTypeParameter = { fg = palette.green },
    CmpItemKindEnumMember = { fg = palette.green },
    CmpItemKindOperator = { fg = palette.green },

    -- ray-x/lsp_signature.nvim
    LspSignatureActiveParameter = { fg = palette.orange },
  }
end

local default_config = {
  palette = M.classic,
  custom_hlgroups = {},
  italics = true,
}

M.setup = function(config)
  vim.cmd('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end
  vim.o.background = 'dark'
  vim.o.termguicolors = true
  config = config or {}
  config = vim.tbl_deep_extend('keep', config, default_config)
  local used_palette = config.palette or M.classic
  --vim.g.colors_name = used_palette.name
  local syntax = M.load_syntax(used_palette)
  syntax = vim.tbl_deep_extend('keep', config.custom_hlgroups, syntax)
  local highlight = highlighter(config)
  for group, colors in pairs(syntax) do
    highlight(group, colors)
  end
  local plugin_syntax = M.load_plugin_syntax(used_palette)
  plugin_syntax = vim.tbl_deep_extend(
    'keep',
    config.custom_hlgroups,
    plugin_syntax
  )
  for group, colors in pairs(plugin_syntax) do
    highlight(group, colors)
  end
end

return M
