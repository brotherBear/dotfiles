-- Fuzzy Finder (files, lsp, etc)
return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      -- Fuzzy Finder Algorithm which requires local dependencies to be built.
      -- Only load if `make` is available. Make sure you have the system
      -- requirements installed.
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')

    telescope.setup({
      defaults = {
        path_display = { 'shorten' },
        mappings = {
          i = {
            ['<esc>'] = actions.close,
            ['<C-k>'] = actions.move_selection_previous, -- move to previous result
            ['<C-j>'] = actions.move_selection_next, -- move to next result
            ['<C-q>'] = actions.send_selected_to_qflist + actions.open_qflist
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    local builtin = require('telescope.builtin')
    local nmap = function(keys, func, desc)
      if desc then
        desc = 'Telescope: ' .. desc
      end
      vim.keymap.set('n', keys, func, { desc = desc })
    end

    -- See `:help telescope.builtin`
    nmap('<leader>?', builtin.oldfiles, '[?] Find recently opened files' )
    nmap('<leader>!', builtin.buffers, '[!] Find existing buffers' )

    nmap('<leader>/', function()
      -- You can pass additional configuration to telescope to change theme, layout, etc.
      builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
      winblend = 10,
      previewer = false,
      })
    end, '[/] Fuzzily search in current buffer' )

    nmap('<leader>sh', builtin.help_tags, '[S]earch [H]elp' )
    nmap('<leader>sw', builtin.grep_string, '[S]earch current [W]ord' )
    nmap('<leader>sg', builtin.live_grep, '[S]earch by [G]rep' )
    nmap('<leader>sd', builtin.diagnostics, '[S]earch [D]iagnostics' )

    nmap('<leader>ff', builtin.find_files, '[F]ind [F]iles' )
    nmap('<leader>sb', function()
      builtin.live_grep( {
        prompt = 'Find string in open buffers ...',
        grep_open_files = true,
      })
    end, '[S]earch in [B]uffers' )
    nmap('<leader>fg', builtin.git_files, '[F]ind [G]it files' )
    nmap('<leader>fs', function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") });
    end, '[F]ind [S]tring in file' )
  end,
}
