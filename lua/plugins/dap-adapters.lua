return {
  {
    "mfussenegger/nvim-dap",
    opts = {
      adapters = {
        gdb = {
          type = "executable",
          command = "gdb",
          args = { "--interpreter=dap", "--eval-command", "set print pretty on" },
        },
      },
      configurations = {
        c_cpp = {
          name = "Launch",
          type = "gdb",
          request = "launch",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopAtBegginingOfMainSubprogram = false,
        },
      },
    },
  },
}
