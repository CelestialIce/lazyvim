return {
  "mfussenegger/nvim-dap",
  dependencies = { "williamboman/mason.nvim" },
  config = function()
    local dap = require("dap")
    dap.adapters.codelldb = {
      type = "server",
      port = "${port}",
      executable = {
        command = require("mason-registry").get_package("codelldb"):get_install_path() .. "/codelldb",
        args = { "--port", "${port}" },
      },
    }

    dap.configurations.c = {
      {
        type = "codelldb",
        request = "launch",
        name = "Launch C program",
        program = function()
          return vim.fn.input("Executable path: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
      },
      {
        type = "codelldb",
        request = "attach",
        name = "Attach to process",
        pid = require("dap.utils").pick_process,
        cwd = "${workspaceFolder}",
      },
    }
    dap.configurations.cpp = dap.configurations.c -- reuse for C++
  end,
}
