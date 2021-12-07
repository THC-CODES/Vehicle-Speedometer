function text(content) 
    SetTextFont(1)
    SetTextProportional(0)
    SetTextScale(1.9,1.9)
    SetTextEntry("STRING")
    AddTextComponentString(content)
    DrawText(0.5,0.9)
end
Citizen.CreateThread(function()

    while true do
        Citizen.Wait(1)
        local speed = (GetEntitySpeed(GetVehiclePedIsIn(PlayerPedId(), false))*2.2369)
        if(IsPedInAnyVehicle(PlayerPedId(), false)) then
            text(math.floor(speed))
        end
    end
end)
