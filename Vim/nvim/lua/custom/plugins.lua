local plugins = {
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    },
    config = function ()
      require("chatgpt").setup({
        api_key_cmd = "pass show API/openai",
        predefined_chat_gpt_prompts = "https://raw.githubusercontent.com/mounta11n/neogenesis/main/Templates/prompts/prompts_collection.csv?token=GHSAT0AAAAAACILXORSWBO4YZRBGFBOSIKCZJ7K6SA",     
      })
    end,
  },
  {
    "vim-crystal/vim-crystal",
    ft = "crystal",
    config = function (_)
      vim.g.crystal_auto_format = 1
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
}
return plugins
