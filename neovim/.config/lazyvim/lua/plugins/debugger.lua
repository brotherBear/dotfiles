return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "mfussenegger/nvim-dap-python",
      -- "rcarriga/nvim-dap-ui",
      -- "theHamsta/nvim-dap-virtual-text",
    },
    opts = function(_, opts)
      local dap = require("dap")

      -- Extend existing configurations
      opts.configurations = {
        python = {
          {
            type = "python",
            request = "launch",
            name = "Launch current file",
            program = "${file}",
            pythonPath = function()
              return require("dap-python").get_python_path() or vim.fn.exepath("python3") or vim.fn.exepath("python")
            end,
          },
          -- Flask launch configuration
          {
            type = "python",
            request = "launch",
            name = "Launch Flask app",
            module = "flask",
            env = {
              -- FLASK_APP = "${file}",
              FLASK_APP = "pilot_app",
              FLASK_ENV = "development",
            },
            args = {
              "run",
              "--no-debugger", -- Disable Flask's built-in debugger
              "--no-reload", -- Disable Flask's auto-reload
              "--port=5000", -- Specify the port
              "--host=0.0.0.0", -- listen on all interfaces
            },
            justMyCode = true, -- skip library code
            pythonPath = function()
              return require("dap-python").get_python_path() or vim.fn.exepath("python3") or vim.fn.exepath("python")
            end,
            -- cwd = "${workspaceFolder}",
            cwd = vim.fn.getcwd(),
          },
          -- Flask attach configuration
          {
            type = "python",
            request = "attach",
            name = "Attach to Flask app",
            connect = {
              host = "localhost",
              port = 5678, -- Default port for Flask debug server
            },
            justMyCode = true, -- skip library code
            pythonPath = function()
              return require("dap-python").get_python_path() or vim.fn.exepath("python3") or vim.fn.exepath("python")
            end,
            cwd = vim.fn.getcwd(),
          },
        },
      }
    end,
  },
}
