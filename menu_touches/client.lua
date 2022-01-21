local open = false
RegisterNetEvent('menu_touches:SendNUIMessage')
AddEventHandler('menu_touches:SendNUIMessage', function(InfosPlayer)
    if not open then
        SendNUIMessage({
            openHtlm = true,
            Infos = InfosPlayer
        })
        open = true
        Citizen.CreateThread(function()
            while open do
                Citizen.Wait(5)
                if IsControlJustPressed(0, 177) then
                    SendNUIMessage({
                        openHtlm = false,
                        Infos = false
                    })
                    open = false
                    return
                end
            end
        end)
    elseif open then
        SendNUIMessage({
            openHtlm = false,
            Infos = false
        })
        open = false
        return
    end
end)