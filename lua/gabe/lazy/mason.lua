return {
  "jay-babu/mason-nvim-dap.nvim",
  opts = {
    ensure_installed = { "debugpy" }, -- Install the Python DAP adapter
    automatic_setup = true,          -- Automatically configure installed adapters
  },
}

