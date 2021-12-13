local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
func = Tunnel.getInterface("vrp_trafico2")

-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local processo = false
local segundos = 0
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCAIS
-----------------------------------------------------------------------------------------------------------------------------------------
local locais = { -- COM Permissão
{ ['id'] = 61, ['x'] = -937.43,  ['y'] = 385.77,   ['z'] = 77.61,  ['text'] = "ROUBAR ~y~SERRA", ['perm'] = "bratva.permissao" },
{ ['id'] = 62, ['x'] = -949.46,  ['y'] = 386.85,   ['z'] = 76.30,  ['text'] = "ROUBAR ~y~FURADEIRA", ['perm'] = "bratva.permissao" },
{ ['id'] = 63, ['x'] = 261.23,   ['y'] = 204.94,   ['z'] = 110.28, ['text'] = "ROUBAR ~y~KEYCARD", ['perm'] = "bratva.permissao" },
{ ['id'] = 64, ['x'] = 1272.24,  ['y'] = -1712.49, ['z'] = 54.77,  ['text'] = "ROUBAR ~y~C4", ['perm'] = "bratva.permissao" },
{ ['id'] = 65, ['x'] = 1275.67,  ['y'] = -1710.38, ['z'] = 54.77,  ['text'] = "ROUBAR ~y~PENDRIVE", ['perm'] = "bratva.permissao" },
{ ['id'] = 66, ['x'] = 12.53,    ['y'] = -1105.80, ['z'] = 29.79,  ['text'] = "ROUBAR ~y~CAPUZ E ALGEMAS", ['perm'] = "bratva.permissao" },
{ ['id'] = 70, ['x'] = 472.57,   ['y'] = -1311.74,  ['z'] = 29.21, ['text'] = "MONTAR ~y~KIT DE REPAROS  ~r~(10x Ferramenta)", ['perm'] = "reparo.permissao" },
}

local novaloc = { -- SEM Permissão
	-- MACONHA
	{ ['id'] = 1, ['x'] = 2219.87, ['y'] = 5577.19,  ['z'] = 53.85,   ['text'] = "COLETAR ~y~RAMOS DE MACONHA" },
	{ ['id'] = 2, ['x'] = 117.96, ['y'] = 6360.50, ['z'] = 32.29,  ['text'] = "PROCESSAR OS ~y~RAMOS DE MACONHA  ~r~(10x Ramos)" },
	{ ['id'] = 3, ['x'] = 112.68, ['y'] = 6359.70, ['z'] = 32.30,  ['text'] = "~y~MISTURAR A MACONHA  ~r~(10x Maconha Mist.)" },
	-- COCAÍNA
	{ ['id'] = 5, ['x'] = 356.25,  ['y'] = 6466.80,  ['z'] = 30.20,   ['text'] = "PEGAR ~y~FOLHA DE COCA" },
	{ ['id'] = 6, ['x'] = -1106.42, ['y'] = 4951.15, ['z'] = 218.64,  ['text'] = "FABRICAR ~y~PASTA DE COCA  ~r~(10x Folha de Coca)" },
	{ ['id'] = 7, ['x'] = -1107.57, ['y'] = 4941.78, ['z'] = 218.64,  ['text'] = "~y~MISTURAR A COCAÍNA  ~r~(10x Pasta de Coca)" },
	--LAVAGEM DE DINHEIRO
	{ ['id'] = 50, ['x'] = 253.56,   ['y'] = 221.06,   ['z'] = 106.28, ['text'] = "~y~VALIDAR O IMPOSTO DE RENDA  ~r~(1x Imposto de Renda Falso)", ['perm'] = "lavagem.permissao" },
	-- TARTARUGA
	{ ['id'] = 71, ['x'] = -101.84, ['y'] = 6208.92, ['z'] = 31.02,  ['text'] = "~y~SEPARAR CARNE DE TARTARUGA  ~r~(3x Tartaruga)" },
} -- 1503.2471923828,6393.5278320313,20.784069061279
-----------------------------------------------------------------------------------------------------------------------------------------
-- BOTÃO
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local idle = 1000
		for k,v in pairs(locais) do
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			if Vdist(v.x,v.y,v.z,x,y,z) <= 5 and not processo then
			  idle = 5
			  DrawMarker(21,v.x,v.y,v.z-0.6,0,0,0,0.0,0,0,0.5,0.5,0.4,255,230,100,100,0,0,0,1)
			  if Vdist(v.x,v.y,v.z,x,y,z) <= 1.2 and not processo then
				idle = 5
				drawTxt("PRESSIONE  ~r~E~w~  PARA "..v.text,4,0.5,0.90,0.50,255,255,255,200)
				if IsControlJustPressed(0,38) and func.checkPermission(v.perm) then
					if func.checkPayment(v.id) then
						TriggerEvent('cancelando',true)
						processo = true
						segundos = 5
					end
				end
			  end
			end
		end
		if processo then
			idle = 5
			drawTxt("AGUARDE ~g~"..segundos.."~w~ SEGUNDOS ATÉ ~y~FINALIZAR O PROCESSO",4,0.5,0.90,0.50,255,255,255,200)
		end

		for k,v in pairs(novaloc) do
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			if Vdist(v.x,v.y,v.z,x,y,z) <= 5 and not processo then
			  idle = 5
			  DrawMarker(21,v.x,v.y,v.z-0.6,0,0,0,0.0,0,0,0.5,0.5,0.4,255,230,100,100,0,0,0,1)
				if Vdist(v.x,v.y,v.z,x,y,z) <= 1.2 and not processo then
					idle = 5
					drawTxt("PRESSIONE  ~r~E~w~  PARA "..v.text,4,0.5,0.90,0.50,255,255,255,200)
					if IsControlJustPressed(0,38) then
						if func.checkPayment(v.id) then
							TriggerEvent('cancelando',true)
							processo = true
							segundos = 5
						end
					end
				end
			end
		end
	Citizen.Wait(idle)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONTAGEM --
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		if segundos > 0 then
			segundos = segundos - 1
			if segundos == 0 then
				processo = false
				TriggerEvent('cancelando',false)
				ClearPedTasks(PlayerPedId())
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES
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