local function status_line()
  local mode = "%h%-5{%v:lua.string.upper(v:lua.vim.fn.mode())%}"
  local file_name = "%-.35f"
  local buf_nr = "[%n]"
  local modified = " %-m"
  local file_type = " %y"
  local right_align = "%="
  local line_no = "%10([%l/%L%)][%c]"
  local pct_thru_file = "%5p%%"
  return string.format(
    "%s%s%s%s%s%s%s%s",
    mode,
    file_name,
    buf_nr,
    modified,
    file_type,
    right_align,
    line_no,
    pct_thru_file
  )
end
vim.opt.winbar = status_line()
vim.api.nvim_set_hl(0, 'WinBar', {
  standout = true,
})
vim.api.nvim_set_hl(0, 'WinBarNC', {
  standout = false,
})
