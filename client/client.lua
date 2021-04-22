ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

--TriggerEvent('chat:addSuggestion', '/fix', 'Fix vehicle')

function ShowNotification(text)
  SetNotificationTextEntry("STRING")
  AddTextComponentString(text)
  DrawNotification(false, false)
end

RegisterCommand("fix", function(source, args)
  ESX.TriggerServerCallback("fix:fetchUserRank", function(playerRank)
  
    if playerRank == "admin" or playerRank == "superadmin" or playerRank == "mod" then

      car = GetVehiclePedIsIn(GetPlayerPed(-1), false)
      SetVehicleFixed(car)
      
    else
        ShowNotification("~r~No Permissions")
    end
  end)
end)

            