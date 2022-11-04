require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'
    use 'WhoIsSethDaniel/mason-tool-installer.nvim'

    use "nvim-treesitter/nvim-treesitter"

    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/vim-vsnip"

    use {
        'nvim-telescope/telescope.nvim',
        requires = {"nvim-lua/plenary.nvim"}
    }

    use {
        "nvim-neo-tree/neo-tree.nvim",
        requires = {"nvim-lua/plenary.nvim", "kyazdani42/nvim-web-devicons", "MunifTanjim/nui.nvim"}
    }

    use({
        "folke/noice.nvim",
            config = function()
            require("noice").setup()
        end,
        requires = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim",
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        "rcarriga/nvim-notify",
        }
    })
end)
