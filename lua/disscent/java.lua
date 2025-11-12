local M = {}

function M.run_java_floating()
  vim.cmd("w")
  local current_file = vim.fn.expand("%")
  local main = vim.fn.expand("%:r")

  local buf = vim.api.nvim_create_buf(false, true)
  local width = math.floor(vim.o.columns * 0.6)
  local height = math.floor(vim.o.lines * 0.6)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  vim.api.nvim_open_win(buf, true, {
    relative="editor",
    width=width,
    height=height,
    row=row,
    col=col,
    style="minimal",
    border="single",
  })

  vim.fn.termopen("javac " .. current_file .. " && java " .. main)
end

return M

