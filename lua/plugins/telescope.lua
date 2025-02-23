return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = 'Telescope find word' })
        vim.keymap.set('n', '<leader>lg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
        vim.keymap.set('n', '<leader>fs', function()
            builtin.find_files {cwd = vim.fn.stdpath 'config'}
        end, {desc = 'Telescope search in nvim setting directory'}
        )

        require('telescope').setup{
            defaults = {
                layout_strategy = 'vertical',
                layout_config = { height = 0.95 },
            },
        }
    end,
}
