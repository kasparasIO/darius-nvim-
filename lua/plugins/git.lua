return {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    keys = {
        { "<leader>go", "<cmd>LazyGit<cr>", desc = "[G]it interface [O]pen" }
    },
    config = function()
        require("telescope").load_extension("lazygit")
    end

}
