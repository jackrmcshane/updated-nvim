return { 
  {
    "iamcco/markdown-preview.nvim",
    -- run = "cd app && npm install",
    config = function()
      vim.fn["mkdp#util#install"]()
      vim.g.mkdp_filetypes = { "markdown" }
      vim.g.mkdp_page_title = "${name}.md"
      -- line below does not work, would be nice if it did
      -- vim.g.mkdp_auto_start = 1
    end,
    ft = { "markdown" },
  },
  {
    "ixru/nvim-markdown",
    config = function()
      vim.g.vim_markdown_conceal = 0 
      vim.g.tex_conceal = ""
      vim.g.vim_markdown_math = 1
    end,
  }
}
