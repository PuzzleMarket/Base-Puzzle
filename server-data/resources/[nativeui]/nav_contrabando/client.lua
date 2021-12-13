-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTION
-----------------------------------------------------------------------------------------------------------------------------------------
local menuactive = false
function ToggleActionMenu()
	menuactive = not menuactive
	if menuactive then
		SetNuiFocus(true,true)
		SendNUIMessage({ showmenu = true })
	else
		SetNuiFocus(false)
		SendNUIMessage({ hidemenu = true })
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- BUTTON
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("ButtonClick",function(data,cb)
	if data == "projetos-comprar-projetoassaultrifle" then
		TriggerServerEvent("contrabando-comprar","projetoassaultrifle")
	elseif data == "projetos-comprar-projetoassaultsmg" then
		TriggerServerEvent("contrabando-comprar","projetoassaultsmg")
	elseif data == "projetos-comprar-projetobullpuprifle" then
		TriggerServerEvent("contrabando-comprar","projetobullpuprifle")
	elseif data == "projetos-comprar-projetogusenberg" then
		TriggerServerEvent("contrabando-comprar","projetogusenberg")
	elseif data == "projetos-comprar-projetopistol" then
		TriggerServerEvent("contrabando-comprar","projetopistol")
	elseif data == "projetos-comprar-projetopumpshotgun" then
		TriggerServerEvent("contrabando-comprar","projetopumpshotgun")
	elseif data == "projetos-comprar-projetosawnoffshotgun" then
		TriggerServerEvent("contrabando-comprar","projetosawnoffshotgun")
	elseif data == "projetos-comprar-projetosmg" then
		TriggerServerEvent("contrabando-comprar","projetosmg")


	elseif data == "utilidades-comprar-algemas" then
		TriggerServerEvent("contrabando-comprar","algemas")
	elseif data == "utilidades-comprar-capuz" then
		TriggerServerEvent("contrabando-comprar","capuz")
	elseif data == "utilidades-comprar-lockpick" then
		TriggerServerEvent("contrabando-comprar","lockpick")
	elseif data == "utilidades-comprar-masterpick" then
		TriggerServerEvent("contrabando-comprar","masterpick")
	elseif data == "utilidades-comprar-pendrive" then
		TriggerServerEvent("contrabando-comprar","pendrive")
	elseif data == "utilidades-comprar-keycard" then
		TriggerServerEvent("contrabando-comprar","keycard")
	elseif data == "utilidades-comprar-c4" then
		TriggerServerEvent("contrabando-comprar","c4")
	elseif data == "utilidades-comprar-serra" then
		TriggerServerEvent("contrabando-comprar","serra")
	elseif data == "utilidades-comprar-furadeira" then
		TriggerServerEvent("contrabando-comprar","furadeira")
	elseif data == "utilidades-comprar-capsula" then
		TriggerServerEvent("contrabando-comprar","capsula")
	--elseif data == "utilidades-comprar-placa" then
	--	TriggerServerEvent("contrabando-comprar","placa")
	elseif data == "utilidades-comprar-impostoderendafalso" then
		TriggerServerEvent("contrabando-comprar","impostoderendafalso")

	elseif data == "utilidades-vender-algemas" then
		TriggerServerEvent("contrabando-vender","algemas")
	elseif data == "utilidades-vender-capuz" then
		TriggerServerEvent("contrabando-vender","capuz")
	elseif data == "utilidades-vender-lockpick" then
		TriggerServerEvent("contrabando-vender","lockpick")
	elseif data == "utilidades-vender-masterpick" then
		TriggerServerEvent("contrabando-vender","masterpick")
	elseif data == "utilidades-vender-pendrive" then
		TriggerServerEvent("contrabando-vender","pendrive")
	elseif data == "utilidades-vender-c4" then
		TriggerServerEvent("contrabando-vender","c4")
	elseif data == "utilidades-vender-capsula" then
		TriggerServerEvent("contrabando-vender","capsula")
	--elseif data == "utilidades-vender-placa" then
	--	TriggerServerEvent("contrabando-vender","placa")
	elseif data == "utilidades-vender-keycard" then
		TriggerServerEvent("contrabando-vender","keycard")
	elseif data == "utilidades-vender-impostoderendafalso" then
		TriggerServerEvent("contrabando-vender","impostoderendafalso")


	elseif data == "fechar" then
		ToggleActionMenu()
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCAIS
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	SetNuiFocus(false,false)
	while true do
		Citizen.Wait(1)
		local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),1239.14,-2940.48,9.31,true)
		if distance <= 3 then
			DrawMarker(21,1239.14,-2940.48,9.31-0.6,0,0,0,0.0,0,0,0.5,0.5,0.4,255,230,100,100,0,0,0,1)
			if distance <= 1.1 then
				if IsControlJustPressed(0,38) then
					ToggleActionMenu()
				end
			end
		end
	end
end)