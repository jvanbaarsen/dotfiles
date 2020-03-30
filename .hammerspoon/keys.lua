local alert = require "hs.alert"
local hotkey = require "hs.hotkey"

hyper = {"cmd", "alt", "ctrl", "shift"}
meh = {"alt", "ctrl", "shift"}
local shortcuts = {
  ["normal"] = {},
  ["ergodox"] = {},
}

Keys = {
  ["specialTriggers"] = {
    ["ToggleKeyboard"] = {{meh, "Y"}, {meh, "Y"}},
    ["Lock"] = {{{"ctrl", "alt", "cmd"}, "L"}, {hyper, "L"}},
    ["Reload"] = {{{"ctrl", "alt", "cmd"}, "R"}, {hyper, "3"}},
    ["Console"] = {{{"ctrl", "alt", "cmd"}, "C"}, {hyper, "4"}},

    ["Fullscreen window"] = {{{"alt", "cmd"}, "F"}, {meh, "F"}},
    ["Left 50% window"] = {{{"alt", "cmd"}, "["}, {meh, "H"}},
    ["Right 50% window"] = {{{"alt", "cmd"}, "]"}, {meh, "L"}},
    ["Center window"] = {{{"alt", "cmd"}, "c"}, {meh, "C"}},
  },
  ["triggers"] = {
    ["Activity Monitor"] = {{{"ctrl", "alt", "cmd"}, "A"}, {hyper, "5"}},
    ["Terminal.app"] = {{{"ctrl"}, "2"}, {hyper, "T"}},
    ["Google Chrome"] = {{{"ctrl"}, "3"}, {hyper, "B"}},
    ["Slack"] = {{{"ctrl"}, "4"}, {hyper, "S"}},
    ["iA Writer"] = {{{"ctrl"}, "="}, {hyper, "R"}},
  },
}

function Keys.keyFor(name)
  local keys = Keys.triggers[name]
  if not keys then
    keys = Keys.specialTriggers[name]
  end

  return keys
end

function Keys.bindKeyFor(appName, fn)
  keys = Keys.keyFor(appName)
  normalKeys = keys[1]
  ergodoxKeys = keys[2]
  shortcuts["normal"][appName] = hotkey.new(normalKeys[1], normalKeys[2], fn)
  shortcuts["ergodox"][appName] = hotkey.new(ergodoxKeys[1], ergodoxKeys[2], fn)
end

function Keys.deactivateKeys()
  for _, keys in pairs(shortcuts) do
    for __, k in pairs(keys) do
      k:disable()
    end
  end
end

function Keys.activateKeys()
  keys = shortcuts[Keys.keyboardType()]
  for _, k in pairs(keys) do
    k:enable()
  end
end

function Keys.keyboardType()
  if not Keys.keyboard then
    Keys.keyboard = "normal"
  end
  return Keys.keyboard
end

function Keys.toggleKeyboard()
  if Keys.keyboardType() == "normal" then
    Keys.keyboard = "ergodox"
  else
    Keys.keyboard = "normal"
  end
  alert.show("Keyboard: " .. Keys.keyboardType())
  Keys.deactivateKeys()
  Keys.activateKeys()
end

return Keys
