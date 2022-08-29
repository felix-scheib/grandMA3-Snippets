--[[
PanTilt_Inverter V1.1 created by Felix Scheib "DarfSchader"

GNU GENERAL PUBLIC LICENSE Version 3

Read README.md for more information and an explaination how to use the plugin
Read LICENSE for license Information of the whole grandMA3_Snippets project

For more information about the grandMA3_Snippets project take a look at the README of the grandMA3_Snippets project

Disclaimer
The plugin is made by a private programmer who isn't working for MA Lighting. It's made based on the knowledge of the programmer, not the knowledge of a developer of the grandMA3 system. System failure caused by using this plugin is completely the risk of the user. Never use this plugin in a critical situation! Only use this plugin in show situations after checking that it won't break the system! 

Happy Lighting
]]

DMXInvert = {}

local PAN = "pandmxinvert"
local TILT = "tiltdmxinvert"

local function invert(attribute, enabled)
    local subfixtureIndex = SelectionFirst();

    while subfixtureIndex do
        local subFixture = GetSubfixture(subfixtureIndex)

        subFixture[attribute] = tostring(enabled)

        subfixtureIndex = SelectionNext(subfixtureIndex)
    end
end

DMXInvert.panEnabled = function ()
    invert(PAN, true)
end

DMXInvert.panDisabled = function ()
    invert(PAN, false)
end

DMXInvert.tiltEnabled = function ()
    invert(TILT, true)
end

DMXInvert.tiltDisabled = function ()
    invert(TILT, false)
end