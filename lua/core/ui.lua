------------------------------------
-- UI
------------------------------------
local ui = require("vim._core.ui2")

ui.enable({
  enable = true,
  msg = {
    ---@type string|table<string, 'cmd'|'msg'|'pager'>
    targets = "msg",
  },
})
