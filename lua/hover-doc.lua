require 'vim.lsp'
require 'vim.lsp.util'
local M = {}

function M.visit()
  local params = vim.lsp.util.make_position_params()

  local function handler(_, result, _, _)
    if result == nil then
      return
    end
    local url = string.match(result.contents.value, "%((http[^()]+)%)")
    io.popen("open " .. url)
  end
  vim.lsp.buf_request(0, "textDocument/hover", params, handler)
end

return M
