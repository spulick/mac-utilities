-- A very simple bongocat. Can always replace the left and right images.

bongocat = hs.menubar.new()

local eventtap = require("hs.eventtap")
local image = require("hs.image")
local events = eventtap.event.types

local left_cat = image.imageFromPath("./Assets/left.png"):setSize({w = 40, h = 40})
local right_cat = image.imageFromPath("./Assets/right.png"):setSize({w = 40, h = 40})

if bongocat then
    hs.eventtap.new({ events.keyUp }, function()
        local currentIcon = bongocat:icon()
        if currentIcon == left_cat then
            bongocat:setIcon(right_cat)
        else
            bongocat:setIcon(left_cat)
        end
    end):start()
else
    hs.alert.show("Failed to create Bongocat menubar item")
end

-- Automatically tile Stata windows to the noice configuration.

function stataWatcher(appName, eventType, appObject)
    if (eventType == hs.application.watcher.launched) then
        if (appName == "StataNow/MP 19.5") then
            appObject:selectMenuItem({"Window", "Move & Resize", "Top Left"})

            --eventtap.keyStrokes("help help_adviser") -- keystroke for viewer
            --eventtap.keyStroke({}, "return")
            eventtap.keyStroke({"cmd"}, "7")
            appObject:selectMenuItem({"Window", "Move & Resize", "Bottom Left"})

            eventtap.keyStroke({"cmd"}, "9") -- keystroke for do-file editor
            --appObject:selectMenuItem({"Window", "Move & Resize", "Right"})
        end
    end
end

stataWatcherInstance = hs.application.watcher.new(stataWatcher)
stataWatcherInstance:start()