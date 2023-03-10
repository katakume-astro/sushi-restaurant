lib.callback.register('astro:ramen:dodajkaske', function()
	local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        local item1 =  xPlayer.getInventoryItem('dango').count
        local item2 =  xPlayer.getInventoryItem('matcha').count
        local item3 =  xPlayer.getInventoryItem('ramen').count
        local item4 =  xPlayer.getInventoryItem('sushi').count
        local matma = item1 + item2 + item3 + item4
        local matma2 = matma * 95
if item1 > 0 or item2 > 0 or item3 > 0 or item4 > 0 then
    xPlayer.removeInventoryItem("dango", item1)
    xPlayer.removeInventoryItem("matcha", item2)
    xPlayer.removeInventoryItem("ramen", item3)
    xPlayer.removeInventoryItem("sushi", item4)
    exports.ox_inventory:AddItem(_source, 'money', matma2)
else
TriggerClientEvent('Astro-NotifySystem:Notify', source, 'error', 'Nie masz co mu sprzedac!')
end
end)

lib.callback.register('astro:ramen:item1', function()
	local _source = source
	exports.ox_inventory:AddItem(_source, 'dango', 1)
end)

lib.callback.register('astro:ramen:item2', function()
	local _source = source
	exports.ox_inventory:AddItem(_source, 'matcha', 1)
end)

lib.callback.register('astro:ramen:item3', function()
	local _source = source
	exports.ox_inventory:AddItem(_source, 'ramen', 1)
end)

lib.callback.register('astro:ramen:item4', function()
	local _source = source
	exports.ox_inventory:AddItem(_source, 'sushi', 1)
end)


--  lib.callback('astro:ramen:item1')