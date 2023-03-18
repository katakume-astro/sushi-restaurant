local mamauto = false
CreateThread(function()
local point = lib.points.new(vec3(-169.9334, 295.1165, 93.7621), 3, {
    ramen = 'ramen',
})

function point:onEnter()

    lib.showTextUI('[E] - Menu restauracji')

end

function point:onExit()

    lib.hideTextUI()

end

function point:nearby()

    DrawMarker(23, self.coords.x, self.coords.y, self.coords.z-1, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 200, 20, 20, 50, false, true, 2, nil, nil, false)

    if self.currentDistance < 1 and IsControlJustReleased(0, 38) then
        lib.showTextUI('Sushi (50$) \n Ramen (65$) \n Matcha (25$) \n botchan dango (35$)')

    end
end
end)

CreateThread(function()
local point = lib.points.new(vec3(-178.0020, 301.6870, 97.4600), 1, {
    ramenek = 'ramenek',
})

function point:onEnter()
if ESX.PlayerData.job and ESX.PlayerData.job.name == 'Restauracja' then
    lib.showTextUI('[E] - Przygotuj ramen')
end
end

function point:onExit()
if ESX.PlayerData.job and ESX.PlayerData.job.name == 'Restauracja' then
    lib.hideTextUI()
end
end

function point:nearby()
if ESX.PlayerData.job and ESX.PlayerData.job.name == 'Restauracja' then
    DrawMarker(23, self.coords.x, self.coords.y, self.coords.z-1, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 200, 20, 20, 50, false, true, 2, nil, nil, false)

    if self.currentDistance < 1 and IsControlJustReleased(0, 38) then
local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}, 'easy'}, {'w', 'a', 's', 'd'})
if success then
FreezeEntityPosition(PlayerPedId(), true)
if lib.progressCircle({
    duration = 9000,
label = 'Wytwarzasz',
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
        car = true,
    },
}) then lib.callback('astro:ramen:item3') FreezeEntityPosition(PlayerPedId(), false) else FreezeEntityPosition(PlayerPedId(), false) end
    end
end
end
end
end)










CreateThread(function()
local point = lib.points.new(vec3(-178.1984, 304.8691, 97.4599), 1, {
    sushi = 'sushi',
})

function point:onEnter()
if ESX.PlayerData.job and ESX.PlayerData.job.name == 'Restauracja' then
    lib.showTextUI('[E] - Przygotuj sushi')
end
end

function point:onExit()
if ESX.PlayerData.job and ESX.PlayerData.job.name == 'Restauracja' then
    lib.hideTextUI()
end
end

function point:nearby()
if ESX.PlayerData.job and ESX.PlayerData.job.name == 'Restauracja' then
    DrawMarker(23, self.coords.x, self.coords.y, self.coords.z-1, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 200, 20, 20, 50, false, true, 2, nil, nil, false)

    if self.currentDistance < 1 and IsControlJustReleased(0, 38) then
local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}, 'easy'}, {'w', 'a', 's', 'd'})
if success then
FreezeEntityPosition(PlayerPedId(), true)
if lib.progressCircle({
    duration = 9000,
label = 'Wytwarzasz',
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
        car = true,
    },
}) then lib.callback('astro:ramen:item4') FreezeEntityPosition(PlayerPedId(), false) else FreezeEntityPosition(PlayerPedId(), false) end
    end
end
end
end
end)









CreateThread(function()
local point = lib.points.new(vec3(-175.4830, 301.5278, 97.4600), 1, {
    matcha = 'matcha',
})

function point:onEnter()
if ESX.PlayerData.job and ESX.PlayerData.job.name == 'Restauracja' then
    lib.showTextUI('[E] - Przygotuj matche')
end
end

function point:onExit()
    lib.hideTextUI()
end

function point:nearby()
if ESX.PlayerData.job and ESX.PlayerData.job.name == 'Restauracja' then
    DrawMarker(23, self.coords.x, self.coords.y, self.coords.z-1, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 200, 20, 20, 50, false, true, 2, nil, nil, false)

    if self.currentDistance < 1 and IsControlJustReleased(0, 38) then
local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}, 'easy'}, {'w', 'a', 's', 'd'})
if success then
FreezeEntityPosition(PlayerPedId(), true)
if lib.progressCircle({
    duration = 9000,
label = 'Wytwarzasz',
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
        car = true,
    },
}) then lib.callback('astro:ramen:item2') FreezeEntityPosition(PlayerPedId(), false) else FreezeEntityPosition(PlayerPedId(), false) end
    end
end
end
end
end)













CreateThread(function()
local point = lib.points.new(vec3(-160.3104, 279.7185, 93.7188), 4, {
    garaz = 'garaz',
})

function point:onEnter()
if ESX.PlayerData.job and ESX.PlayerData.job.name == 'Restauracja' then
local graczauto = GetVehiclePedIsIn(PlayerPedId(), true)
local czyjestwaucie = IsPedInVehicle(PlayerPedId(), graczauto , false)
if czyjestwaucie == 1 then lib.showTextUI('[E] - Schowaj auto')
else
    lib.showTextUI('[E] - Rozpocznij wezwania NPC')
end
end
end

function point:onExit()
if ESX.PlayerData.job and ESX.PlayerData.job.name == 'Restauracja' then
    lib.hideTextUI()
end

end

function point:nearby()
if ESX.PlayerData.job and ESX.PlayerData.job.name == 'Restauracja' then

    DrawMarker(29, self.coords.x, self.coords.y, self.coords.z, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 200, 20, 20, 50, false, true, 2, nil, nil, false)

    if self.currentDistance < 1 and IsControlJustReleased(0, 38)  then

      local graczauto = GetVehiclePedIsIn(PlayerPedId(), true)
      local czyjestwaucie = IsPedInVehicle(PlayerPedId(), graczauto , false)
      if czyjestwaucie == 1 then SetEntityAsMissionEntity(graczauto, true, true)
mamauto = false
      DeleteVehicle(graczauto)

      
      

    elseif mamauto == false then
    ESX.Game.SpawnVehicle('brioso2', vector3(-140.2946, 274.5532, 94.7011), 175.7203, function(vehicle)
    local plate = GetVehicleNumberPlateText(vehicle)
  --TriggerServerEvent('luke_garages:dodajkluczyki', plate)
    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
    mamauto = true
    SetNewWaypoint(226.9854, 1172.4354)
end)
else exports['astro_lib']:notify('inform', 'Masz juz 1 wyciagniety pojazd', 5000)
end
end
end
end
end)


-- -159.3069, 278.1134, 93.6927, 273.1990

local blips = {
     {title="~b~[FIRMA] ~w~Goko Takeaway", colour=0, id=197, x = -159.3069, y = 278.1134, z = 93.6927}
  }
      
Citizen.CreateThread(function()
    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)







CreateThread(function()
local point = lib.points.new(vec3(226.6172, 1172.3142, 225.4600), 4, {
    klient = 'klient',
})

function point:onEnter()
if mamauto == true then
    lib.showTextUI('[E] - Porozmawiaj z klientem')
end
end

function point:onExit()
    lib.hideTextUI()
end

function point:nearby()
if mamauto == true then
    DrawMarker(29, self.coords.x, self.coords.y, self.coords.z, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 200, 20, 20, 50, false, true, 2, nil, nil, false)

    if self.currentDistance < 1 and IsControlJustReleased(0, 38) then
    if lib.progressBar({
    duration = 6000,
    label = 'Przekazujesz jedzenie',
    useWhileDead = false,
    canCancel = false,
    disable = {
        car = true,
    },
    anim = {
        dict = 'move_weapon@jerrycan@generic',
        clip = 'loop_bottle'
    },
    prop = {
        model = `prop_food_cb_bag_01`,
        pos = vec3(0.03, 0.03, 0.02),
        rot = vec3(0.0, 0.0, -1.5)
    },
}) then lib.callback('astro:ramen:dodajkaske')  SetNewWaypoint(-140.9520, 275.8996) exports['astro_lib']:notify('inform', 'Wejdz do pojazdu sluzbowego i go oddaj w rece firmy', 5000) else mamauto = true end
    end
end
end
end)




-- 226.6172, 1172.3142, 225.4600, 106.8017






CreateThread(function()
local point = lib.points.new(vec3(-175.0336, 304.9354, 97.4600), 1, {
    deser = 'deser',
})

function point:onEnter()
if ESX.PlayerData.job and ESX.PlayerData.job.name == 'Restauracja' then
    lib.showTextUI('[E] - Przygotuj botchan dango')
end
end

function point:onExit()
if ESX.PlayerData.job and ESX.PlayerData.job.name == 'Restauracja' then
    lib.hideTextUI()
end
end

function point:nearby()
if ESX.PlayerData.job and ESX.PlayerData.job.name == 'Restauracja' then
    DrawMarker(23, self.coords.x, self.coords.y, self.coords.z-1, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 200, 20, 20, 50, false, true, 2, nil, nil, false)

    if self.currentDistance < 1 and IsControlJustReleased(0, 38) then
local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}, 'easy'}, {'w', 'a', 's', 'd'})
if success then
FreezeEntityPosition(PlayerPedId(), true)
if lib.progressCircle({
    duration = 9000,
label = 'Wytwarzasz',
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
        car = true,
    },
}) then lib.callback('astro:ramen:item1') FreezeEntityPosition(PlayerPedId(), false) else FreezeEntityPosition(PlayerPedId(), false) end
    end
end
end
end
end)
