return {
    'holgerson09/workspace.nvim',
    lazy = false,
    config = function()
        local workspace = require('workspace')
        workspace:setup()

        local keys = 'jkl;fdsa'

        for i = 0, #keys do
            local value = keys:sub(i, i)
            vim.keymap.set('n', '<leader>w' .. value, function()
                workspace.list:select(i)
            end)
        end

        vim.keymap.set('n', '<leader>wo', function()
            if not workspace:active() then
                print("Workspace: not enabled")
                return
            end

            local result = ""
            for i, item in ipairs(workspace.list.profiles) do
                result = result .. i .. ': ' .. item.name .. ' - "' .. item.path .. '"\n'
            end
            print(result)
        end)
    end,
}
