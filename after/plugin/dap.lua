require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
local dap, dapui = require("dap"), require("dapui")

vim.keymap.set("n", "<leader>dt", function() dapui.toggle() end)
vim.keymap.set("n", "<leader>db", function() dap.toggle_breakpoint() end)
vim.keymap.set("n", "<leader>dc", function() dap.continue() end)

dapui.setup()

--dap.configurations.python = {
--  {
--    -- The first three options are required by nvim-dap
--    type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
--    request = 'launch';
--    name = "Launch file";

--    -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

--    program = "${file}"; -- This configuration will launch the current file if used.
--    pythonPath = function()
--      -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
--      -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
--      -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
--      local cwd = vim.fn.getcwd()
--      if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
--        return cwd .. '/venv/bin/python'
--      elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
--        return cwd .. '/.venv/bin/python'
--      else
--        return '/Users/alberthassey/.pyenv/shims/python'
--      end
--    end;
--  },
--}
table.insert(dap.configurations.python, {
  type = 'python',
  request = 'launch',
  name = 'Django',
  program = vim.fn.getcwd() .. '/src/manage.py',  -- NOTE: Adapt path to manage.py as needed
  django = true,
  args = {'runserver', '--noreload'},
})
