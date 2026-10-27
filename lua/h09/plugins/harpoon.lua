return {
    'theprimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'holgerson09/workspace.nvim',
    },
    event = 'VimEnter',
    config = function()
        local workspace = require('workspace')
        local harpoon = require('harpoon')

        harpoon:setup({
            settings = {
                key = function()
                    if workspace:active() then
                        return workspace.list:get_active_path()
                    end
                    return vim.fn.getcwd()
                end
            }
        })

        vim.keymap.set('n', '<leader>jh', function()
            harpoon:list():add()
        end)
        vim.keymap.set('n', '<leader>jo', function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end)

        local keys = 'jkl;fdsa'

        for i = 0, #keys do
            local value = keys:sub(i, i)
            vim.keymap.set('n', '<leader>j' .. value, function()
                harpoon:list():select(i)
            end)
        end
    end,
}
