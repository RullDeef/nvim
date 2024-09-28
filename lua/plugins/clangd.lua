return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          CompileFlags = {
            CompilationDatabase = "build/",
          },
        },
      },
    },
  },
}
