function Linemode:size_and_mtime()
  -- Return last modified time
  local time = math.floor(self._file.cha.mtime or 0)
  if time == 0 then
    time = ''
  elseif os.date('%Y', time) == os.date '%Y' then
    time = os.date('%b %d %H:%M', time)
  else
    time = os.date('%b %d %Y', time)
  end

  -- File / Dir size
  local size = self._file:size()

  -- Return Right Line string
  -- Time | Size
  return string.format('%s <> %s', size and ya.readable_size(size) or '-', time)
end

require('full-border'):setup {
  type = ui.Border.ROUNDED,
}

-- DuckDB plugin configuration
require("duckdb"):setup({
  mode = "standard"/"summarized",            -- Default: "summarized"
  cache_size = 1000                          -- Default: 500
  row_id = true/false/"dynamic",             -- Default: false
  minmax_column_width = int                  -- Default: 21
  column_fit_factor = float                  -- Default: 10.0
})

require('git'):setup()
require('sshfs'):setup()
