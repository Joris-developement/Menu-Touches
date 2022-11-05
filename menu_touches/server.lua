RegisterCommand('touches', function(source)
    local _src = source
    TriggerClientEvent('menu_touches:SendNUIMessage', _src, {
        id = _src,
        name = GetPlayerName(_src)
    })
end, false)
