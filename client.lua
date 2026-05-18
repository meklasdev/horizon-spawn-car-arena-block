local ENTITY_TYPE_VEHICLE = 2

local function isVehicleInBlockedSpawnArea(vehicle)
    local vehicleCoords = GetEntityCoords(vehicle)

    for _, point in ipairs(Config.BlockedSpawnPoints) do
        local pointCoords = vector3(point.x, point.y, point.z)

        if #(vehicleCoords - pointCoords) <= (point.radius or 35.0) then
            return true
        end
    end

    return false
end

AddEventHandler('entityCreated', function(entity)
    if not DoesEntityExist(entity) then
        return
    end

    if GetEntityType(entity) ~= ENTITY_TYPE_VEHICLE then
        return
    end

    -- Allow the newly created vehicle to initialize before distance checks.
    Wait(50)

    if isVehicleInBlockedSpawnArea(entity) then
        SetEntityAsMissionEntity(entity, true, true)
        DeleteEntity(entity)
    end
end)
