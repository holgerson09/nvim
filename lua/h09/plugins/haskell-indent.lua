return {
    'neovimhaskell/haskell-vim',
    config = function()
        vim.g.haskell_indent_if = 4
        vim.g.haskell_indent_case = 4
        vim.g.haskell_indent_let = 4
        vim.g.haskell_indent_where = 4
        vim.g.haskell_indent_before_where = 4
        vim.g.haskell_indent_after_bare_where = 4
        vim.g.haskell_indent_do = 4
        vim.g.haskell_indent_in = 1
        vim.g.haskell_indent_guard = 4
    end
}
