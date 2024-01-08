---@type MappingsTable
local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>Db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle breakpoint at line",
    },
    ["<leader>Dr"] = {
      "<cmd> DapContinue <CR>",
      "Run or continue the debugger",
    },
  },
}

M.crates = {
  plugin = true,
  n = {
    ["<leader>rcu"] = {
      function ()
        require("crates").upgrade_all_crates()
      end,
      "Update crates",
    },
  },
}

M.general = {
  n = {
    ["<C-d>"] = {
      "<C-d>zz",
      "Half page down",
    },
    ["<C-u>"] = {
      "<C-u>zz",
      "Half page up",
    },
    n = {
      "nzzzv",
      "Next search result",
    },
    N = {
      "Nzzzv",
      "Previous search result",
    },
    ["<leader>d"] = {
      "\"_d",
      "Delete",
    },
  },
  v = {
    J = {
      ":m '>+1<CR>gv=gv",
      "Move highlighted text down",
    },
    K = {
      ":m '<-2<CR>gv=gv",
      "Move highlighted text up",
    },
    ["<leader>d"] = {
      "\"_d",
      "Delete",
    },
  },
  x = {
    ["<leader>p"] = {
      "\"_dP",
      "Paste over selection without overwriting copy buffer",
    },
  },
}

return M
