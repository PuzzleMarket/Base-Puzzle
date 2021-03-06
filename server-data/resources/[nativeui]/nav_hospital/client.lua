-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONEXÃO
-----------------------------------------------------------------------------------------------------------------------------------------
src = {}
Tunnel.bindInterface("nav_hospital",src)
vSERVER = Tunnel.getInterface("nav_hospital")
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCALIDADES
-----------------------------------------------------------------------------------------------------------------------------------------
local localidades = {
	{ 310.699,-597.05,43.28 }
	--{ 310.43,-599.06,43.29 } -- Hospital Antigo
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- OPENSHOP
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	SetNuiFocus(false,false)
	while true do
		Citizen.Wait(5)
		local ped = PlayerPedId()
		if not IsPedInAnyVehicle(ped) then
			--DrawMarker(21, 310.43,-599.06,43.29-0.5,0,0,0,0,0,0,0.5,0.5,0.4,250,100,50,150,0,0,0,1) --Antigo
			DrawMarker(21, 310.699,-597.05,43.28-0.5,0,0,0,0,0,0,0.5,0.5,0.4,250,100,50,150,0,0,0,1) --Novo
			local x,y,z = table.unpack(GetEntityCoords(ped))
			for k,v in pairs(localidades) do
				local distance = Vdist(x,y,z,v[1],v[2],v[3])
				if distance <= 1.2 and IsControlJustPressed(0,38) and vSERVER.checkPermission() then
					SetNuiFocus(true,true)
					SendNUIMessage({ action = "showMenu" })
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SHOPCLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("shopClose",function(data)
	SetNuiFocus(false,false)
	SendNUIMessage({ action = "hideMenu" })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REMEDIOSLIST
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("remediosList",function(data,cb)
	local shopitens = vSERVER.remediosList()
	if shopitens then
		cb({ shopitens = shopitens })
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CURATIVOSLIST
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("curativosList",function(data,cb)
	local shopitens = vSERVER.curativosList()
	if shopitens then
		cb({ shopitens = shopitens })
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SHOPBUY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("shopBuy",function(data)
	if data.index ~= nil then
		vSERVER.shopBuy(data.index,data.price,data.amount)
	end
end)