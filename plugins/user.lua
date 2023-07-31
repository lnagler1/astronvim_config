return {
  "andweeb/presence.nvim",
  "kaiuri/nvim-juliana",
  "folke/tokyonight.nvim",
  "Mofiqul/vscode.nvim",
  "nyoom-engineering/oxocarbon.nvim",
  "ellisonleao/gruvbox.nvim",
  "kyazdani42/blue-moon",
  "drewtempelmeyer/palenight.vim",
  "tjdevries/gruvbuddy.nvim",
  "metalelf0/jellybeans-nvim",
  "Abstract-IDE/Abstract-cs",
  "rafamadriz/neon",
  "tomasiser/vim-code-dark",
  "marko-cerovac/material.nvim",
  "bluz71/vim-moonfly-colors",
  "christianchiarulli/nvcode-color-schemes.vim",
  "mhartington/oceanic-next",
  "rockerBOO/boo-colorscheme-nvim",
  "jim-at-jibba/ariake-vim-colors",
  "Th3Whit3Wolf/onebuddy",
  "tjdevries/colorbuddy.vim",
  "ishan9299/modus-theme-vim",
  "sainnhe/gruvbox-material",
  "sainnhe/edge",
  "theniceboy/nvim-deus",
  { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup()
    end,
  },

  { "rose-pine/neovim", name = "rose-pine" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-baby",
    },
  },
  {
    "shaunsingh/nord.nvim",
    init = function()
      vim.g.nord_contrast = true
      vim.g.nord_borders = false
      vim.g.nord_disable_background = false
      vim.g.nord_italic = false
      vim.g.nord_uniform_diff_background = true
      vim.g.nord_bold = false
    end,
  },
  {
    "lukas-reineke/headlines.nvim",
    optional = true,
    opts = {
      markdown = {
        headline_highlights = {
          "Headline1",
          "Headline2",
          "Headline3",
          "Headline4",
          "Headline5",
          "Headline6",
        },
      },
    },
  },
  {
    "akinsho/bufferline.nvim",
    optional = true,
    opts = function(_, opts)
      return require("astronvim.utils").extend_tbl(opts, {
        highlights = require("nord").bufferline.highlights { italic = true, bold = true },
        options = { separator_style = "thin" },
      })
    end,
  },
  "olimorris/onedarkpro.nvim",
  opts = {
    options = {
      highlight_inactive_windows = true,
    },
  },
  "sainnhe/sonokai",
  init = function() vim.g.sonokai_dim_inactive_windows = 1 end,

  "olivercederborg/poimandres.nvim",
  name = "poimandres",
  opts = {
    -- leave this setup function empty for default config
    bold_vert_split = false, -- use bold vertical separators
    dim_nc_background = false, -- dim 'non-current' window backgrounds
    disable_background = false, -- disable background
    disable_float_background = false, -- disable background for floats
    disable_italics = false, -- disable italics
  },
}
