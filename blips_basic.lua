---- APEX DEVELOPMENT 
-- DISCORD.GG/K3YnEJzzDA

local QBCore = exports['qb-core']:GetCoreObject()

local blips = {
    {name = "Bilforhandler", x = -1038.0825, y = -1373.5485, z = 5.6718, sprite = 225, color = 5, scale = 0.8},
}

local createdBlips = {}

local function createBlips()
    for _, info in pairs(blips) do
        local blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(blip, info.sprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, info.scale)
        SetBlipColour(blip, info.color)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.name)
        EndTextCommandSetBlipName(blip)
        table.insert(createdBlips, blip)
    end
end

Citizen.CreateThread(function()
    createBlips()
end)
