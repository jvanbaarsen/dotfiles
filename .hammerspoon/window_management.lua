local hotkey = require "hs.hotkey"
local window = require "hs.window"
local screen = require "hs.screen"
local alert = require "hs.alert"
local keys = require "keys"

window.animationDuration = 0

function alertCannotManipulateWindow()
  alert.show("Can't move window")
end

keys.bindKeyFor("Fullscreen window", function()
  local win = window.focusedWindow()
  if not win then
    alertCannotManipulateWindow()
    return
  end
  local screen = win:screen()
  local max = screen:frame()

  win:setFrame(max)
end)

keys.bindKeyFor("Left 50% window", function()
  local win = window.focusedWindow()
  if not win then
    alertCannotManipulateWindow()
    return
  end
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

keys.bindKeyFor("Right 50% window", function()
  local win = window.focusedWindow()
  if not win then
    alertCannotManipulateWindow()
    return
  end
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  if max.x < 0 then
    -- If on screen on the left of the main display
    f.x = max.x + max.w / 2
  else
    f.x = max.x2 / 2
  end
  f.y = max.y
  f.x2 = max.x2
  f.y2 = max.y2
  win:setFrame(f)
end)
