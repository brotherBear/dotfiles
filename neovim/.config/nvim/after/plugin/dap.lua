local dap = require('dap')
dap.adapters.python = {
    type = 'executable';
    command = os.getenv('HOME') .. '/.virtualenvs/tools/bin/python';
    args = { '-m', 'debugpy.adapter' };
}

dap.configurations.python = {
    {
        type = 'python';
        request = 'launch';
        name = 'Launch file';
        program = "${file}";
        pythonpath = function()
            return '/opt/homebrew/bin/python3'
        end;
    },
}

local dap_python = require('dap-python')

dap_python.test_runner = 'pytest'

dap_python.setup('~/.virtualenvs/debugpy/bin/python')

-- require("dapui").setup()

