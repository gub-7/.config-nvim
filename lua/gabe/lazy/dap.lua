return {
  {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")

    vim.keymap.set("n", "<leader><C-p>", dap.continue, { desc = "Start Debugging" })
    vim.keymap.set("n", "<leader>O", dap.step_over, { desc = "Step Over" })
    vim.keymap.set("n", "<leader><C-[>", dap.step_into, { desc = "Step Into" })
    vim.keymap.set("n", "<leaer>C-]>", dap.step_out, { desc = "Step Out" })
    vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
    vim.keymap.set("n", "<leader>B", function()
      dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
    end, { desc = "Set Conditional Breakpoint" })
    -- Configure the Python DAP adapter
    dap.adapters.python = {
      type = "executable",
      command = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python", -- Adjust if needed
      args = { "-m", "debugpy.adapter" },
    }

    -- Define Python configurations
    dap.configurations.python = {
      {
        type = "python",
        request = "launch",
        name = "Launch file",
        program = "${file}",  -- Use the current file as the entry point
        pythonPath = function()
          -- Try to use a virtual environment if available
          local venv_path = os.getenv("VIRTUAL_ENV")
          if venv_path then
            return venv_path .. "/bin/python"
          end
          return "/usr/bin/python"  -- Adjust to match your system's Python path
        end,
      },
    }
  end},
    {
      "rcarriga/nvim-dap-ui",  -- UI for nvim-dap
      dependencies = { "mfussenegger/nvim-dap" },
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")

            dapui.setup()

        -- Open and close DAP UI automatically
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
                dap.listeners.before.event_terminated["dapui_config"] = function()
            dapui.close()
            end
                dap.listeners.before.event_exited["dapui_config"] = function()
            dapui.close()
            end
        end,
    },
    {
      "jay-babu/mason-nvim-dap.nvim",  -- Mason integration for DAP
      dependencies = {
        "mfussenegger/nvim-dap",
        "williamboman/mason.nvim",
      },
    },
    {
      "williamboman/mason.nvim", -- Package manager for Neovim
      build = ":MasonUpdate",
    }
}
