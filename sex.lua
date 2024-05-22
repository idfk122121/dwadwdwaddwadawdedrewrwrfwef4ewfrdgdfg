local function turnOffESP()
    ESPEnabled = false
    for _, connection in pairs(connections) do
        connection:Disconnect()
    end
    for _, player in pairs(Players:GetPlayers()) do
        local espObjects = player:GetAttribute("ESPObjects")
        if espObjects then
            for _, object in pairs(espObjects) do
                object:Remove()
            end
        end
    end
end
