local hyper = {"ctrl", "alt", "cmd"}

hs.loadSpoon("MiroWindowsManager")

hs.window.animationDuration = 0.3
spoon.MiroWindowsManager:bindHotkeys({
  up = {hyper, "up"},
  right = {hyper, "right"},
  down = {hyper, "down"},
  left = {hyper, "left"},
  fullscreen = {hyper, "f"}
})

-- https://github.com/miromannino/miro-windows-manager

local wifiMenu = hs.menubar.new()
function ssidChangedCallback()
    SSID = hs.wifi.currentNetwork()
    if SSID == nil then
        SSID = "Disconnected"
    end
    if SSID ~= "backson" then
      hs.audiodevice.defaultOutputDevice():setMuted(true)
      hs.caffeinate.set("displayIdle", false, true)
    end
    wifiMenu:setTitle("(" .. SSID .. ")" )
end
wifiWatcher = hs.wifi.watcher.new(ssidChangedCallback)
wifiWatcher:start()
ssidChangedCallback()