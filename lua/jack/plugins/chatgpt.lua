local home = vim.fn.expand("$HOME")
return {
  "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup({
      api_key_cmd = "gpg --decrypt " .. home .. "/openai.gpg",
    })

    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>co", "<cmd>ChatGPT<CR>", { desc = "Toggle Chat GPT" }) -- toggle ChatGPT
    keymap.set("v", "<leader>cc", "<cmd>ChatGPTCompleteCode<CR>", { desc = "Toggle Chat GPT Code Completion" }) -- toggle GPT Code Completion
    keymap.set("n", "<leader>ca", "<cmd>ChatGPTActAs<CR>", { desc = "Toggle Chat GPT act as" }) -- toggle Chat GPT act as

    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim",
      "nvim-telescope/telescope.nvim"
    }
}
