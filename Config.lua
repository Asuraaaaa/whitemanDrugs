Config = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj; end)

Citizen.CreateThread(function(...)
  while not ESX do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj; end)
    Citizen.Wait(0)
  end
end)

-- For the door.
Config.ShowBlip = true
Config.DrawTextDist = 10.0
Config.NotificationTime = 5.0
Config.RefreshPosTimer = 60.0 -- minutes

-- The door.
Config.HintLocations = {
    [1] = vector4(-1152.0,-1447.54,4.71, 36.74),
    [2] = vector4(85.83,-1959.58,21.12,224.34),
    [3] = vector4(896.35,-1036.33,35.11,180.00),
}

Config.SellLocations1 = {
    [1] = vector4(),
    [2] = vector4(),
    [3] = vector4(),
}

Config.SellLocations2 = {
    [1] = vector4(),
    [2] = vector4(),
    [3] = vector4(),
}

Config.SellLocations3 = {
    [1] = vector4(),
    [2] = vector4(),
    [3] = vector4(),
}

Config.DrugItems = {
    ['Meth'] = 'meth',
    ['Cocaine'] = 'cocaine',
    --['Weed'] = 'weed',  
}
  
Config.DrugPrices = {
    ['meth'] = 100,
    ['cocaine'] = 250,
   -- ['weed'] = 50,
}
  
Config.MaxPriceVariance = 10.0 --%