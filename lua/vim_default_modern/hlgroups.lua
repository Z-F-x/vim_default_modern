local M = {}

--- @param config VimDefaultModernConfig
--- @param theme VimDefaultModernThemeDark | VimDefaultModernThemeLight
--- @return table
function M.get(config, theme)
    local palette = theme.palette

    return {
        -- Editor
        ['Conceal'] = { bg = palette.none, fg = palette.grey_15 },
        ['Cursor'] = { bg = theme.ui.cursor.bg, fg = theme.ui.cursor.fg },
        ['CursorIM'] = { bg = theme.ui.cursor.bg, fg = theme.ui.cursor.fg },
        ['CursorLine'] = {
            bg = palette.none,
        },
        ['CursorLineNr'] = {
            bg = palette.none,
            fg = theme.ui.cursor.line.nr.fg,
        },
        ['Directory'] = { fg = theme.ui.directory.fg },
        ['diffAdded'] = { fg = theme.git.signs.add },
        ['diffRemoved'] = { fg = theme.git.signs.delete },
        ['DiffAdd'] = { bg = theme.git.diff.add },
        ['DiffChange'] = { bg = theme.git.diff.change },
        ['DiffDelete'] = { bg = theme.git.diff.delete },
        ['DiffText'] = { bg = theme.git.diff.text },
        ['EndOfBuffer'] = { fg = theme.ui.bg },
        ['ErrorMsg'] = { fg = theme.lsp.diagnostics.error },
        ['FoldColumn'] = {
            bg = palette.none,
            fg = palette.none,
        },
        ['Folded'] = { bg = theme.ui.folded.bg },
        ['FloatBorder'] = {
            bg = palette.none,
            fg = theme.ui.float.border.fg,
        },
        ['lCursor'] = { bg = theme.ui.cursor.bg, fg = theme.ui.cursor.fg },
        ['LineNr'] = {
            bg = palette.none,
            fg = theme.ui.line_nr.fg,
        },
        ['MatchParen'] = { bg = theme.ui.match_paren.bg },
        ['NonText'] = { fg = theme.ui.indent_guide.fg, bg = palette.none },
        ['Normal'] = {
            bg = palette.none,
            fg = theme.ui.fg,
        },
        ['NormalFloat'] = {
            bg = palette.none,
        },
        ['Search'] = { bg = theme.ui.search.bg },
        ['SignColumn'] = { bg = palette.none },
        ['SpellBad'] = {
            sp = theme.lsp.diagnostics.error,
            undercurl = config.undercurl,
        },
        ['SpellCap'] = {
            sp = theme.lsp.diagnostics.warn,
            undercurl = config.undercurl,
        },
        ['SpellLocal'] = {
            sp = theme.lsp.diagnostics.info,
            undercurl = config.undercurl,
        },
        ['SpellRare'] = {
            sp = theme.lsp.diagnostics.hint,
            undercurl = config.undercurl,
        },
        ['StatusLine'] = {
            bg = palette.none,
            fg = theme.ui.status_line.fg,
        },
        ['StatusLineNC'] = {
            bg = palette.none,
            fg = theme.ui.status_line.fg,
        },
        ['TermCursor'] = {
            bg = theme.ui.cursor.term.bg,
            fg = theme.ui.cursor.term.fg,
        },
        ['Title'] = { fg = palette.light_17 },
        ['Visual'] = { bg = theme.ui.visual.bg },
        ['WarningMsg'] = { fg = theme.lsp.diagnostics.warn },
        ['Whitespace'] = { fg = theme.ui.indent_guide.fg, bg = palette.none },
        ['WinBar'] = { fg = palette.light_02 },
        ['WinBarNC'] = {
            bg = palette.none,
        },
        ['WinSeparator'] = { fg = theme.ui.win_separator.fg },

        -- Pmenu
        ['Pmenu'] = { bg = palette.none, fg = theme.ui.pmenu.fg },
        ['PmenuSbar'] = { bg = palette.none },
        ['PmenuSel'] = {
            bg = theme.ui.pmenu.sel.bg,
            fg = theme.ui.pmenu.sel.fg,
        },
        ['PmenuThumb'] = { bg = theme.ui.pmenu.thumb.bg },

        -- Sintax
        ['Comment'] = { fg = theme.sintax.comment },

        ['Variable'] = { fg = theme.sintax.variable },
        ['Constant'] = { fg = theme.sintax.constant },
        ['String'] = { fg = theme.sintax.string },
        ['Character'] = { fg = theme.sintax.character },
        ['Number'] = { fg = theme.sintax.number },
        ['Boolean'] = {
            fg = theme.sintax.keyword,
            italic = config.italic_keyword,
        },
        ['Float'] = { fg = theme.sintax.number },

        ['Identifier'] = { fg = theme.sintax.identifier },
        ['Function'] = { fg = theme.sintax.function_name },

        ['Statement'] = {
            fg = theme.sintax.keyword_control_flow,
            italic = config.italic_keyword,
        },
        ['Conditional'] = {
            fg = theme.sintax.keyword_control_flow,
            italic = config.italic_keyword,
        },
        ['Repeat'] = {
            fg = theme.sintax.keyword_control_flow,
            italic = config.italic_keyword,
        },
        ['Label'] = {
            fg = theme.sintax.keyword_control_flow,
            italic = config.italic_keyword,
        },
        ['Operator'] = { fg = theme.sintax.operator },
        ['Keyword'] = {
            fg = theme.sintax.keyword,
            italic = config.italic_keyword,
        },
        ['Exception'] = {
            fg = theme.sintax.keyword_control_flow,
            italic = config.italic_keyword,
        },

        ['PreProc'] = { fg = theme.sintax.keyword_control_flow },
        ['Include'] = {
            fg = theme.sintax.keyword_control_flow,
            italic = config.italic_keyword,
        },
        ['Define'] = { fg = theme.sintax.keyword_control_flow },
        ['Macro'] = {
            fg = theme.sintax.keyword,
            italic = config.italic_keyword,
        },
        ['PreCondit'] = { fg = theme.sintax.keyword_control_flow },

        ['Type'] = { fg = theme.sintax.type },
        ['StorageClass'] = { fg = theme.sintax.type },
        ['Structure'] = { fg = theme.sintax.type },
        ['Typedef'] = { fg = theme.sintax.type },

        ['SpecialChar'] = { fg = theme.sintax.special_char },

        ['Underlined'] = { underline = true },

        ['Error'] = { fg = theme.lsp.diagnostics.error },

        ['Todo'] = { fg = theme.sintax.todo },

        -- nvim-treesitter/nvim-treesitter
        ['@attribute'] = { link = '@type' },
        ['@boolean'] = { link = 'Boolean' },
        ['@character'] = { link = 'String' },
        ['@character.special'] = { link = 'SpecialChar' },
        ['@comment'] = { link = 'Comment' },
        ['@comment.error'] = { fg = theme.lsp.diagnostics.error },
        ['@comment.warning'] = { fg = theme.lsp.diagnostics.warn },
        ['@comment.hint'] = { fg = theme.lsp.diagnostics.hint },
        ['@comment.todo'] = { link = 'Label' },
        ['@keyword.conditional'] = { link = 'Conditional' },
        ['@constant'] = { link = 'Constant' },
        ['@constant.builtin'] = { link = '@keyword' },
        ['@constant.macro'] = { link = 'Macro' },
        ['@constructor'] = { link = 'Type' },
        ['@keyword.directive'] = { link = 'Define' },
        ['@keyword.exception'] = { link = 'Exception' },
        ['@variable.member'] = { link = 'Variable' },
        ['@number.float'] = { link = 'Number' },
        ['@function'] = { link = 'Function' },
        ['@function.builtin'] = { link = 'Function' },
        ['@function.call'] = { link = 'Function' },
        ['@function.macro'] = { link = 'Macro' },
        ['@function.method'] = { link = 'Function' },
        ['@function.method.call'] = { link = 'Function' },
        ['@keyword.import'] = { link = 'Include' },
        ['@keyword'] = { link = 'Keyword' },
        ['@keyword.return'] = {
            fg = theme.sintax.keyword_control_flow,
            italic = config.italic_keyword,
        },
        ['@label'] = { link = 'Label' },
        ['@macro'] = { link = 'Macro' },
        ['@module'] = { fg = theme.sintax.namespace },
        ['@number'] = { link = 'Number' },
        ['@operator'] = { link = 'Operator' },
        ['@variable.parameter'] = { link = 'Variable' },
        ['@punctuation'] = { fg = theme.sintax.punctuation },
        ['@property'] = { link = 'Variable' },
        ['@punctuation.delimiter'] = { fg = theme.sintax.punctuation },
        ['@keyword.repeat'] = { link = 'Repeat' },
        ['@keyword.storage'] = { link = 'StorageClass' },
        ['@string'] = { link = 'String' },
        ['@string.escape'] = { link = 'SpecialChar' },
        ['@markup.link.label'] = { link = 'String' },
        ['@markup.link.url'] = {
            fg = theme.sintax.identifier,
            underline = true,
        },
        ['@string.special.url'] = { fg = theme.sintax.string, underline = true },
        ['@tag'] = { fg = theme.sintax.xml_tag },
        ['@tag.attribute'] = { link = 'Variable' },
        ['@tag.delimiter'] = { fg = theme.sintax.xml_delimiter },
        ['@type'] = { link = 'Type' },
        ['@type.builtin'] = { link = 'Type' },
        ['@type.definition'] = { link = 'Type' },
        ['@type.qualifier'] = { link = 'Keyword' },
        ['@variable'] = { link = 'Variable' },
        ['@variable.builtin'] = { link = 'Variable' },
        ['@diff.plus'] = { fg = theme.git.signs.add },
        ['@diff.minus'] = { fg = theme.git.signs.delete },
        ['@diff.delta'] = { fg = theme.git.signs.change },

        -- LSP
        ['DiagnosticError'] = { fg = theme.lsp.diagnostics.error },
        ['DiagnosticWarn'] = { fg = theme.lsp.diagnostics.warn },
        ['DiagnosticInfo'] = { fg = theme.lsp.diagnostics.info },
        ['DiagnosticHint'] = { fg = theme.lsp.diagnostics.hint },
        ['DiagnosticOk'] = { fg = theme.git.signs.add },
        ['DiagnosticUnderlineError'] = {
            sp = theme.lsp.diagnostics.error,
            undercurl = config.undercurl,
        },
        ['DiagnosticUnderlineWarn'] = {
            sp = theme.lsp.diagnostics.warn,
            undercurl = config.undercurl,
        },
        ['DiagnosticUnderlineInfo'] = {
            sp = theme.lsp.diagnostics.info,
            undercurl = config.undercurl,
        },
        ['DiagnosticUnderlineHint'] = {
            sp = theme.lsp.diagnostics.hint,
            undercurl = config.undercurl,
        },
        ['DiagnosticUnderlineOk'] = {
            sp = theme.git.signs.add,
            undercurl = config.undercurl,
        },
        ['DiagnosticVirtualTextError'] = { fg = theme.lsp.diagnostics.error },
        ['DiagnosticVirtualTextWarn'] = { fg = theme.lsp.diagnostics.warn },
        ['DiagnosticVirtualTextInfo'] = { fg = theme.lsp.diagnostics.info },
        ['DiagnosticVirtualTextHint'] = { fg = theme.lsp.diagnostics.hint },
        ['DiagnosticVirtualTextOk'] = { fg = theme.git.signs.add },
        ['DiagnosticFloatingError'] = { fg = theme.lsp.diagnostics.error },
        ['DiagnosticFloatingWarn'] = { fg = theme.lsp.diagnostics.warn },
        ['DiagnosticFloatingInfo'] = { fg = theme.lsp.diagnostics.info },
        ['DiagnosticFloatingHint'] = { fg = theme.lsp.diagnostics.hint },
        ['DiagnosticFloatingOk'] = { fg = theme.git.signs.add },
        ['DiagnosticSignError'] = { fg = theme.lsp.diagnostics.error },
        ['DiagnosticSignWarn'] = { fg = theme.lsp.diagnostics.warn },
        ['DiagnosticSignInfo'] = { fg = theme.lsp.diagnostics.info },
        ['DiagnosticSignHint'] = { fg = theme.lsp.diagnostics.hint },
        ['DiagnosticSignOk'] = { fg = theme.git.signs.add },
        ['DiagnosticDeprecated'] = {
            strikethrough = true,
            fg = theme.lsp.diagnostics.unnecessary,
        },
        ['DiagnosticUnnecessary'] = { fg = theme.lsp.diagnostics.unnecessary },
        
        -- LSP References
        ['LspReferenceRead'] = { bg = theme.lsp.references.read },
        ['LspReferenceText'] = { bg = theme.lsp.references.text },
        ['LspReferenceWrite'] = { bg = theme.lsp.references.write },

        -- LSP Inlay Hints
        ['LspInlayHint'] = {
            bg = palette.none,
            fg = theme.lsp.inlay_hint.fg,
        },

        -- GitSigns
        ['GitSignsAdd'] = { fg = theme.git.signs.add },
        ['GitSignsChange'] = { fg = theme.git.signs.change },
        ['GitSignsDelete'] = { fg = theme.git.signs.delete },

        -- Telescope
        ['TelescopeNormal'] = { bg = palette.none },
        ['TelescopeBorder'] = { bg = palette.none },
        ['TelescopeMatching'] = { fg = theme.ui.telescope.matching.fg },
        ['TelescopePromptPrefix'] = { fg = theme.ui.fg },
        ['TelescopePromptTitle'] = {
            bg = theme.ui.telescope.prompt.title.bg,
            fg = theme.ui.telescope.prompt.title.fg,
        },
        ['TelescopePreviewTitle'] = {
            bg = theme.ui.telescope.preview.title.bg,
            fg = theme.ui.telescope.preview.title.fg,
        },
        ['TelescopeResultsTitle'] = {
            bg = theme.ui.telescope.results.title.bg,
            fg = theme.ui.telescope.results.title.fg,
        },
        ['TelescopeSelection'] = {
            bg = theme.ui.telescope.selection.bg,
            fg = theme.ui.telescope.selection.fg,
        },
        ['TelescopePromptCounter'] = { fg = theme.ui.telescope.prompt.counter.fg },
        ['TelescopePreviewNormal'] = { bg = palette.none },
        ['TelescopePromptNormal'] = { bg = palette.none },
        ['TelescopeResultsNormal'] = { bg = palette.none },
    }
end

return M 