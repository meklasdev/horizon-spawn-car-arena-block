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

    if GetEntityType(entity) ~= 2 then
        return
    end

    CreateThread(function()
        if not DoesEntityExist(entity) then
            return
        end

        if isVehicleInBlockedSpawnArea(entity) then
            SetEntityAsMissionEntity(entity, true, true)
            DeleteEntity(entity)
        end
    end)
end)
