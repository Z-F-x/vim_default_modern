return {
    --- @param palette VimDefaultModernPalette
    --- @param config VimDefaultModernConfig
    --- @return VimDefaultModernThemeDark
    dark = function(palette, config)
        local background = palette.none
        local statusline_bg = palette.none

        --- @class VimDefaultModernThemeDark
        local theme = {
            palette = palette,
            ui = {
                bg = background,
                bg_darker_01 = palette.none,
                fg = palette.grey_05,
                cursor = {
                    bg = palette.light_03,
                    fg = palette.dark_03,
                    term = {
                        bg = palette.term_white,
                        fg = palette.dark_05,
                    },
                    line = {
                        bg = palette.cursor_line,
                        nr = {
                            bg = palette.cursor_line,
                            fg = palette.light_02,
                        },
                    },
                },
                context = {
                    bg = palette.grey_01,
                },
                directory = {
                    fg = palette.term_yellow,
                },
                float = {
                    bg = background,
                    border = {
                        bg = background,
                        fg = palette.grey_04,
                    },
                },
                line_nr = {
                    bg = background,
                    fg = palette.grey_03,
                },
                match_paren = {
                    bg = palette.match_paren,
                },
                non_text = {
                    bg = palette.none,
                    fg = palette.grey_03,
                },
                status_line = {
                    bg = statusline_bg,
                    fg = palette.grey_04,
                    medium = {
                        bg = palette.dark_02,
                        fg = palette.grey_04,
                    },
                    mode = {
                        bg = palette.term_blue,
                        fg = palette.light_07,
                    },
                    icon = {
                        branch = {
                            fg = palette.term_yellow,
                        },
                        lsp = {
                            active = {
                                fg = palette.git_add,
                            },
                        },
                    },
                },
                search = {
                    bg = palette.search_bg,
                },
                sign_column = {
                    bg = palette.none,
                },
                visual = {
                    bg = palette.visual_bg,
                },
                whitespace = {
                    bg = palette.none,
                    fg = palette.grey_03,
                },
                win_separator = {
                    fg = palette.grey_03,
                },
                pmenu = {
                    bg = palette.pmenu_bg,
                    fg = palette.grey_05,
                    sbar = {
                        bg = palette.pmenu_bg,
                    },
                    sel = {
                        bg = palette.pmenu_sel,
                        fg = palette.light_07,
                    },
                    thumb = {
                        bg = palette.grey_04,
                    },
                },
                indent_guide = {
                    fg = palette.grey_03,
                    active = {
                        fg = palette.grey_04,
                    },
                },
                folded = {
                    bg = palette.fold_bg,
                },
                title = {
                    bg = palette.term_blue,
                    fg = palette.light_07,
                },
                telescope = {
                    matching = {
                        fg = palette.term_bright_blue,
                    },
                    preview = {
                        bg = palette.dark_01,
                        border = {
                            bg = palette.dark_01,
                            fg = palette.dark_01,
                        },
                        title = {
                            bg = palette.term_blue,
                            fg = palette.light_07,
                        },
                    },
                    prompt = {
                        bg = palette.dark_02,
                        fg = palette.grey_05,
                        border = {
                            bg = palette.dark_02,
                            fg = palette.dark_02,
                        },
                        counter = {
                            fg = palette.grey_05,
                        },
                        title = {
                            bg = palette.term_blue,
                            fg = palette.light_07,
                        },
                    },
                    results = {
                        bg = palette.dark_01,
                        border = {
                            bg = palette.dark_01,
                            fg = palette.dark_01,
                        },
                        title = {
                            bg = palette.term_blue,
                            fg = palette.light_07,
                        },
                    },
                    selection = {
                        bg = palette.pmenu_sel,
                        fg = palette.light_07,
                    },
                },
            },
            sintax = {
                comment = palette.comment,
                variable = palette.variable,
                constant = palette.term_bright_blue,
                string = palette.string,
                character = palette.term_red,
                number = palette.number,
                boolean = palette.keyword,
                identifier = palette.grey_05,
                punctuation = palette.grey_05,
                function_name = palette.func,
                operator = palette.grey_05,
                keyword = palette.keyword,
                keyword_control_flow = palette.term_magenta,
                macro = palette.keyword,
                type = palette.type,
                namespace = palette.type,
                special_char = palette.special_char,
                xml_tag = palette.keyword,
                xml_delimiter = palette.grey_04,
                todo = palette.term_bright_magenta,
            },
            git = {
                signs = {
                    add = palette.git_add,
                    delete = palette.git_delete,
                    change = palette.git_change,
                },
                status = {
                    ignored = palette.grey_04,
                    untracked = palette.term_bright_green,
                    staged = palette.term_green,
                    deleted = palette.term_red,
                    modified = palette.term_yellow,
                },
                diff = {
                    add = palette.dark_01,
                    change = palette.dark_01,
                    delete = palette.dark_01,
                    text = palette.dark_01,
                },
            },
            lsp = {
                diagnostics = {
                    error = palette.error,
                    warn = palette.warning,
                    info = palette.info,
                    hint = palette.hint,
                    unnecessary = palette.grey_04,
                },
                references = {
                    write = palette.dark_03,
                    read = palette.dark_02,
                    text = palette.dark_02,
                },
                inlay_hint = {
                    bg = palette.dark_01,
                    fg = palette.grey_04,
                },
            },
            neotest = {
                ui = {
                    file = palette.term_blue,
                    namespace = palette.term_yellow,
                    dir = palette.term_blue,
                    adapter = palette.term_red,
                    indent = palette.term_yellow,
                    marker = palette.term_yellow,
                    select = palette.term_yellow,
                    test = palette.func,
                },
                process = {
                    error = palette.error,
                    success = palette.git_add,
                    run = palette.term_yellow,
                    skip = palette.term_blue,
                    focus = palette.term_bright_magenta,
                },
            },
        }

        return theme
    end,

    --- @param palette VimDefaultModernPalette
    --- @param config VimDefaultModernConfig
    --- @return VimDefaultModernThemeLight
    light = function(palette, config)
        local background = palette.none

        --- @class VimDefaultModernThemeLight
        local theme = {
            palette = palette,
            ui = {
                bg = background,
                bg_darker_01 = palette.light_03,
                bg_darker_02 = palette.light_04,
                fg = palette.dark_03,
                cursor = {
                    bg = palette.dark_01,
                    fg = palette.light_07,
                    term = {
                        bg = palette.term_blue,
                        fg = palette.light_07,
                    },
                    line = {
                        bg = palette.light_04,
                        nr = {
                            bg = palette.light_04,
                            fg = palette.term_blue,
                        },
                    },
                },
                context = {
                    bg = palette.light_03,
                },
                directory = {
                    fg = palette.term_yellow,
                },
                float = {
                    bg = background,
                    border = {
                        bg = background,
                        fg = palette.grey_04,
                    },
                },
                line_nr = {
                    bg = background,
                    fg = palette.grey_03,
                },
                match_paren = {
                    bg = palette.light_02,
                },
                non_text = {
                    bg = palette.none,
                    fg = palette.light_02,
                },
                status_line = {
                    bg = palette.none,
                    fg = palette.dark_03,
                    medium = {
                        bg = palette.light_02,
                        fg = palette.dark_03,
                    },
                    mode = {
                        bg = palette.term_blue,
                        fg = palette.light_07,
                    },
                    icon = {
                        branch = {
                            fg = palette.term_yellow,
                        },
                        lsp = {
                            active = {
                                fg = palette.git_add,
                            },
                        },
                    },
                },
                search = {
                    bg = palette.term_bright_yellow,
                },
                sign_column = {
                    bg = palette.none,
                },
                visual = {
                    bg = palette.term_bright_blue,
                },
                whitespace = {
                    bg = palette.none,
                    fg = palette.light_02,
                },
                win_separator = {
                    fg = palette.light_02,
                },
                pmenu = {
                    bg = palette.light_02,
                    fg = palette.dark_03,
                    sbar = {
                        bg = palette.light_02,
                    },
                    sel = {
                        bg = palette.light_03,
                        fg = palette.dark_01,
                    },
                    thumb = {
                        bg = palette.light_01,
                    },
                },
                indent_guide = {
                    fg = palette.light_02,
                    active = {
                        fg = palette.grey_04,
                    },
                },
                folded = {
                    bg = palette.term_bright_blue,
                },
                title = {
                    bg = palette.term_blue,
                    fg = palette.light_07,
                },
                telescope = {
                    matching = {
                        fg = palette.term_blue,
                    },
                    preview = {
                        bg = palette.none,
                        border = {
                            bg = palette.none,
                            fg = palette.none,
                        },
                        title = {
                            bg = palette.term_blue,
                            fg = palette.light_07,
                        },
                    },
                    prompt = {
                        bg = palette.none,
                        fg = palette.dark_03,
                        border = {
                            bg = palette.none,
                            fg = palette.none,
                        },
                        counter = {
                            fg = palette.dark_03,
                        },
                        title = {
                            bg = palette.term_blue,
                            fg = palette.light_04,
                        },
                    },
                    results = {
                        bg = palette.none,
                        border = {
                            bg = palette.none,
                            fg = palette.none,
                        },
                        title = {
                            bg = palette.term_blue,
                            fg = palette.light_04,
                        },
                    },
                    selection = {
                        bg = palette.light_03,
                        fg = palette.dark_01,
                    },
                },
            },
            sintax = {
                comment = palette.comment,
                variable = palette.term_blue,
                constant = palette.term_blue,
                string = palette.term_red,
                character = palette.term_red,
                number = palette.number,
                identifier = palette.dark_03,
                punctuation = palette.dark_03,
                function_name = palette.func,
                operator = palette.dark_01,
                keyword = palette.term_blue,
                keyword_control_flow = palette.term_magenta,
                macro = palette.term_blue,
                type = palette.type,
                namespace = palette.type,
                special_char = palette.term_red,
                xml_tag = palette.term_blue,
                xml_delimiter = palette.keyword,
                todo = palette.term_bright_magenta,
            },
            git = {
                signs = {
                    add = palette.git_add,
                    delete = palette.git_delete,
                    change = palette.git_change,
                },
                status = {
                    ignored = palette.grey_04,
                    untracked = palette.term_green,
                    staged = palette.term_green,
                    deleted = palette.term_red,
                    modified = palette.term_yellow,
                },
                diff = {
                    add = palette.term_bright_green,
                    change = palette.light_03,
                    delete = palette.term_bright_red,
                    text = palette.term_bright_green,
                },
            },
            lsp = {
                diagnostics = {
                    error = palette.error,
                    warn = palette.warning,
                    info = palette.info,
                    hint = palette.hint,
                    unnecessary = palette.grey_04,
                },
                references = {
                    write = palette.term_bright_blue,
                    read = palette.light_02,
                    text = palette.light_02,
                },
                inlay_hint = {
                    bg = palette.none,
                    fg = palette.grey_04,
                },
            },
            neotest = {
                ui = {
                    file = palette.term_blue,
                    namespace = palette.term_yellow,
                    dir = palette.term_blue,
                    adapter = palette.term_red,
                    indent = palette.term_yellow,
                    marker = palette.term_yellow,
                    select = palette.term_yellow,
                    test = palette.grey_05,
                },
                process = {
                    error = palette.error,
                    success = palette.git_add,
                    run = palette.term_yellow,
                    skip = palette.term_blue,
                    focus = palette.term_bright_magenta,
                },
            },
        }

        return theme
    end,
} 