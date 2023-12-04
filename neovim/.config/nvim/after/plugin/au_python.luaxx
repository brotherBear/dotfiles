-- Auto command to run formatting tools on Python buffers
vim.cmd([[
  augroup pythonAutoFormat
    autocmd!
    autocmd BufWritePost *.py lua AutoSortImports()
    autocmd BufWritePost *.py lua AutoFormatPython()
  augroup END
]])

function AutoSortImports()
  local linters = {'isort'}
  local format_command = ''
  for _, linter in ipairs(linters) do
    if vim.fn.executable(linter) == 1 then
      format_command = format_command .. linter .. ' '
    end
  end
  if format_command ~= '' then
    format_command = format_command .. vim.fn.expand('%')
    vim.fn.system(format_command)
  end
end

function AutoFormatPython()
  local linters = {'black'}
  local format_command = ''
  for _, linter in ipairs(linters) do
    if vim.fn.executable(linter) == 1 then
      format_command = format_command .. linter .. ' '
    end
  end
  if format_command ~= '' then
    format_command = format_command .. vim.fn.expand('%')
    vim.fn.system(format_command)
    print(format_command)
    vim.cmd('edit')
  end
end

-- vim.api.nvim_create_autocmd("BufWritePost", {
--   group = vim.api.nvim_create_augroup("automagic-run-on-save", {clear = true}),
--   pattern = "*.py",
--   callback = AutoFormatPython ()
-- })

