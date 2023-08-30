M = {}

M.set_colorscheme = function()
  local get_hostname = function()
    local f = io.popen("/bin/hostname")
    local contents = f:read("*a") or ""
    f:close()
    local hostname = string.gsub(contents, "\n$", "")
    return hostname
  end

  local hostname = get_hostname()
  local cs = "gruvbox-material"
  if hostname == "tb-loaner" then
    cs = "gruvbox-material"
  end

  vim.cmd.colorscheme(cs)
end

return M
