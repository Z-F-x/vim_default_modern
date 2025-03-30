--- @class VimDefaultModernPalette
local palette = {
    -- Neovim default dark theme colors
    dark_01 = '#0a0b10', -- NvimDarkGray1 - darkest bg
    dark_02 = '#1c1d23', -- NvimDarkGray2 - darker bg
    dark_03 = '#2c2e33', -- NvimDarkGray3 - dark bg
    dark_04 = '#4f5258', -- NvimDarkGray4 - lighter bg
    dark_05 = '#000000', -- pure black

    -- Grays
    grey_01 = '#2c2e33', -- NvimDarkGray3
    grey_02 = '#4f5258', -- NvimDarkGray4
    grey_03 = '#6b6f7b', -- darker comment/non-text
    grey_04 = '#8a909c', -- regular comment/non-text
    grey_05 = '#abb1bf', -- light text/foreground
    grey_06 = '#c4c6cd', -- NvimLightGray3
    grey_07 = '#d7dae1', -- NvimLightGray2
    grey_08 = '#ebeef5', -- NvimLightGray1 - lightest gray

    -- Terminal standard colors (dark)
    term_black = '#0a0b10',    -- NvimDarkGray1
    term_red = '#5e0009',      -- NvimDarkRed
    term_green = '#015825',    -- NvimDarkGreen
    term_yellow = '#6e5600',   -- NvimDarkYellow
    term_blue = '#005078',     -- NvimDarkBlue
    term_magenta = '#4c0049',  -- NvimDarkMagenta
    term_cyan = '#007676',     -- NvimDarkCyan
    term_white = '#ebeef5',    -- NvimLightGray1

    -- Terminal bright colors (light)
    term_bright_black = '#4f5258',   -- NvimDarkGray4
    term_bright_red = '#ffbcb5',     -- NvimLightRed
    term_bright_green = '#aaedb7',   -- NvimLightGreen
    term_bright_yellow = '#f4d88c',  -- NvimLightYellow
    term_bright_blue = '#9fd8ff',    -- NvimLightBlue
    term_bright_magenta = '#ffc3fa', -- NvimLightMagenta
    term_bright_cyan = '#83efef',    -- NvimLightCyan
    term_bright_white = '#ffffff',   -- pure white

    -- Light shades
    light_01 = '#9b9ea4', -- NvimLightGray4
    light_02 = '#c4c6cd', -- NvimLightGray3
    light_03 = '#d7dae1', -- NvimLightGray2
    light_04 = '#ebeef5', -- NvimLightGray1
    light_05 = '#f5f5f5', -- almost white
    light_06 = '#fafafa', -- whiter
    light_07 = '#ffffff', -- pure white

    -- Syntax colors
    comment = '#6a9955',    -- green-ish comment color
    string = '#ce9178',     -- orange-ish string color
    variable = '#9cdcfe',   -- light blue for variables
    keyword = '#569cd6',    -- blue for keywords
    number = '#b5cea8',     -- light green for numbers
    func = '#dcdcaa',       -- yellow for functions
    type = '#4ec9b0',       -- teal for types
    
    -- Special colors
    special_char = '#d7ba7d',  -- special characters
    error = '#f85149',         -- errors
    warning = '#cca700',       -- warnings
    info = '#3794ff',          -- information
    hint = '#75beff',          -- hints

    -- UI colors
    visual_bg = '#264f78',    -- selection background
    cursor_line = '#2c2e33',  -- cursor line background
    fold_bg = '#212e3a',      -- folded text background
    pmenu_bg = '#333333',     -- popup menu background
    pmenu_sel = '#04395e',    -- popup menu selection
    search_bg = '#613214',    -- search highlight background
    match_paren = '#888888',  -- matching parenthesis highlight

    -- Git colors
    git_add = '#2ea043',      -- git add
    git_change = '#0078d4',   -- git change
    git_delete = '#f85149',   -- git delete

    -- No background
    none = 'NONE',
}

return palette 