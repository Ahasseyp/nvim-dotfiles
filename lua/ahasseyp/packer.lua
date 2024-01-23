-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"
    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.4",
        -- or                            , branch = "0.1.x",
        requires = { { "nvim-lua/plenary.nvim" } }
    }
    use({
        "rose-pine/neovim",
        as = "rose-pine",
        config = function()
            require("rose-pine").setup()
        end
    })
    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
    use "nvim-treesitter/nvim-treesitter-context"
    use("nvim-treesitter/playground")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v1.x",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" }, -- Required
            { "williamboman/mason.nvim" }, -- Optional
            { "williamboman/mason-lspconfig.nvim" }, -- Optional

            -- Autocompletion
            { "hrsh7th/nvim-cmp" }, -- Required
            { "hrsh7th/cmp-nvim-lsp" }, -- Required
            { "hrsh7th/cmp-buffer" }, -- Optional
            { "hrsh7th/cmp-path" }, -- Optional
            { "saadparwaiz1/cmp_luasnip" }, -- Optional
            { "hrsh7th/cmp-nvim-lua" }, -- Optional

            -- Snippets
            { "L3MON4D3/LuaSnip" }, -- Required
            { "rafamadriz/friendly-snippets" }, -- Optional
        }
    }
    use { "nvim-telescope/telescope-file-browser.nvim" }
    use { "drewtempelmeyer/palenight.vim" }
    use { "aluriak/nerdcommenter" }
    use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
    use { "theprimeagen/harpoon" }
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })
    use { "kyazdani42/nvim-web-devicons" }
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }
    use {
        "kdheepak/tabline.nvim",
        requires = { { "hoob3rt/lualine.nvim", opt = true }, { "kyazdani42/nvim-web-devicons", opt = true } }
    }
    use { "psf/black" }
    use { "folke/tokyonight.nvim" }
    use { "catppuccin/nvim", as = "catppuccin" }
    use { "bluz71/vim-moonfly-colors", branch = "cterm-compat" }
    use { "bluz71/vim-nightfly-colors" }
    use { "EdenEast/nightfox.nvim" }
    use { "mattn/emmet-vim" }
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use {
        "lewis6991/gitsigns.nvim",
    }
    use { "numtostr/BufOnly.nvim" }
    use { "norcalli/nvim-colorizer.lua" }
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    use { "mfussenegger/nvim-dap-python"}
    use { "mortepau/codicons.nvim" }
    use {
        "yamatsum/nvim-nonicons",
        requires = {"kyazdani42/nvim-web-devicons"}
    }
    use { 'jose-elias-alvarez/null-ls.nvim' }
    use { 'MunifTanjim/prettier.nvim' }
    --use { 'mhartington/formatter.nvim' }
    use { "ThePrimeagen/git-worktree.nvim" }
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }
    use { 'voldikss/vim-floaterm' }
    use({
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        tag = "v<CurrentMajor>.*",
        -- install jsregexp (optional!:).
        run = "make install_jsregexp"
    })
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
            require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }
    use {
        "folke/zen-mode.nvim"
    }
    use {
        'kevinhwang91/nvim-bqf'
    }
    use {'junegunn/fzf', run = function()
        vim.fn['fzf#install']()
    end
}
end)
