RegisterCommand('touches', function(source)
    local _src = source
--     InfosPlayer = {
--         id = _src,
--         name = GetPlayerName(_src),
--     }
    TriggerClientEvent('menu_touches:SendNUIMessage', _src, {
        id = _src,
        name = GetPlayerName(_src)
    })
end, false)
