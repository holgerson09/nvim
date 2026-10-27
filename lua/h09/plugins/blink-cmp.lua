return {
    'saghen/blink.cmp',
    dependencies = { 'L3MON4D3/LuaSnip', version = 'v2.*' },
    version = 'v1.*',
    opts = {
        snippets = { preset = 'luasnip' },
        keymap = { preset = 'default' },
        appearance = {
            nerd_font_variant = 'mono',
        },
        completion = {
            menu = {
                border = require('h09.settings').border,
            },
            documentation = {
                auto_show = false,
                window = {
                    border = require('h09.settings').border,
                },
            },
        },
        fuzzy = { implementation = 'prefer_rust' },
    },
}
