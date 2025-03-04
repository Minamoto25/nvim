return {
    {
        'nvim-tree/nvim-tree.lua',
        opts = {
            view = {width = 30,},
            filters = {dotfiles = true,},
            sync_root_with_cwd = true,
            update_focused_file = { enable = true, },
        }
    },
    {'akinsho/toggleterm.nvim', version = "*", opts = {--[[ things you want to change go here]]}}
}
