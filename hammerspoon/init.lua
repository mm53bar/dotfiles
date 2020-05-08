local hyper = {"ctrl", "alt", "cmd", "shift"}

hs.loadSpoon("MiroWindowsManager")
hs.loadSpoon("TextClipboardHistory")

hs.window.animationDuration = 0.3
spoon.MiroWindowsManager:bindHotkeys({
  up = {hyper, "up"},
  right = {hyper, "right"},
  down = {hyper, "down"},
  left = {hyper, "left"},
  fullscreen = {hyper, "f"}
})
spoon.TextClipboardHistory:bindHotkeys({
  toggle_clipboard = {hyper, "v"} 
})

spoon.TextClipboardHistory:start()

-- https://github.com/miromannino/miro-windows-manager

local wifiMenu = hs.menubar.new()
function ssidChangedCallback()
    SSID = hs.wifi.currentNetwork()
    if SSID == nil then
        SSID = "Disconnected"
    end
    if SSID ~= "backson" then
      hs.audiodevice.defaultOutputDevice():setMuted(true)
    else
      hs.audiodevice.defaultOutputDevice():setMuted(false)
    end

    -- wifiMenu:setTitle("(" .. SSID .. ")" )
end
wifiWatcher = hs.wifi.watcher.new(ssidChangedCallback)
wifiWatcher:start()
ssidChangedCallback()

hs.hotkey.bind(hyper, "l", function()
  hs.caffeinate.lockScreen()
end)

hs.hotkey.bind(hyper, "j", function()
  hs.execute("journal", true)
end)