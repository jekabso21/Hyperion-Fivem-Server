local hasloded = false
local zones = {}
RegisterNetEvent("QBCore:Client:OnPlayerLoaded", function()
    Wait(2000)
    LoadAllZones()
    hasloded = true
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    hasloded = false
    zones = {}
end)


function LoadAllZones()
    for _, zone in pairs(Config.UIzones) do
        zones = lib.zones.box({
            coords =  zone.coords,
            size = vec3(zone.wight, zone.lenght, zone.range),
            rotation = zone.rotation,
            debug = zone.debug,
            inside = ShowTUI,
            onEnter = onEnter,
            onExit = onExit
        })
    end
    lib.notify({
        title = 'Loded zones',
        type = 'success'
    })
end

RegisterCommand("reloadzones", function()
    if hasloded == false then
        LoadAllZones()
        hasloded = true
    else
        print("Zones are already loaded")
    end
end)


-- Functions

function onEnter(self)
    print('entered zone', self.id)
end

function onExit(self)
    lib.hideTextUI()
end
lib.hideTextUI()

function ShowTUI(self)
    local data = Config.TextUI[self.id]
    lib.showTextUI(data.text)
    if IsControlJustReleased(0, data.key) then
        print('triggered event', data.event)
        print("Pressed key: ", data.key)
        TriggerEvent(data.event)
    end
end


