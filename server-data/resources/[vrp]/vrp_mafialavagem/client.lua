local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
lav = Tunnel.getInterface("vrp_mafialavagem",lav)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS --
-----------------------------------------------------------------------------------------------------------------------------------------
local andamento = false
local segundos = 0
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCALIZAÇÃO DAS LAVAGENS DE DINHEIRO --
-----------------------------------------------------------------------------------------------------------------------------------------
local locais = {
	{ ['id'] = 1 , ['x'] = -1866.04, ['y'] = 2061.18, ['z'] = 135.43, ['h'] = 178.88 }, 
	--{ ['id'] = 2 , ['x'] = -80.13, ['y'] = -800.65, ['z'] = 243.40, ['h'] = 250.23 },  
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- PROCESSO --
---------------------------------------------wd--------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local puzzle = 1000
		for _,v in pairs(locais) do
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			local bowz,cdz = GetGroundZFor_3dCoord(v.x,v.y,v.z)
			local distance = GetDistanceBetweenCoords(v.x,v.y,cdz,x,y,z,true)
			if distance <= 3.5 and not andamento then
				puzzle = 5
				DrawMarker(21,v.x,v.y,v.z-0.6,0,0,0,0,180.0,130.0,0.3,0.3,0.3,250,100,50,150,0,0,0,1)
				if distance <= 1.2 and not andamento then
					drawTxt("PRESSIONE  ~r~E~w~  PARA ~y~LAVAR DINHEIRO  ~r~(25.000 Dinheiro Sujo + 1 Imp. de Renda)",4,0.5,0.90,0.50,255,255,255,200)
					if IsControlJustPressed(0,38) and lav.checkpermission() and lav.checkDinheiro() and lav.checkkeys() and not IsPedInAnyVehicle(ped) then
						lav.lavagemPolicia(v.id,v.x,v.y,v.z,v.h)
						lav.webhookmafia ()
						TriggerEvent("progress",4000,"Lavando Dinheiro")
					end
				end
			end
		end
		Citizen.Wait(puzzle)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- INICIANDO LAVAGEM DE DINHEIRO --
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("iniciandolavagem1")
AddEventHandler("iniciandolavagem1",function(head,x,y,z)
	segundos = 5
	andamento = true
	SetEntityHeading(PlayerPedId(),head)
	SetEntityCoords(PlayerPedId(),x,y,z-1,false,false,false,false)
	SetCurrentPedWeapon(PlayerPedId(),GetHashKey("WEAPON_UNARMED"),true)
	TriggerEvent('cancelandolavagem',true)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONTAGEM --
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		if andamento then
			segundos = segundos - 1
			if segundos <= 0 then
				andamento = false
				ClearPedTasks(PlayerPedId())
				TriggerEvent('cancelandolavagem',false)
				lav.checkPayment()
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES --
-----------------------------------------------------------------------------------------------------------------------------------------
function drawTxt(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end