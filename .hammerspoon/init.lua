local alert = require "hs.alert"
local keys = require "keys"
require "triggers"
require "window_management"

-- hs.loadSpoon('ControlEscape'):start()
keys.deactivateKeys()
keys.activateKeys()

alert.show("Hammerspoon loaded!")
