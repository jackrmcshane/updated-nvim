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
  -- local cs = "kanagawa"
  local cs = "tokyonight"
  if hostname == "tb-loaner" then
    cs = "tokyonight"
  end

  vim.cmd.colorscheme(cs)
end

return M
