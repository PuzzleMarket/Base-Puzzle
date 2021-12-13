local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
func = Tunnel.getInterface("vrp_trafico")

-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local processo = false
local segundos = 0
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCAIS
-----------------------------------------------------------------------------------------------------------------------------------------
local locais = { -- Com Permissão
	-- ARMAS
	{ ['id'] = 20, ['x'] = 897.99, ['y'] = -3221.62, ['z'] = -98.24, ['text'] = "MONTAR UMA ~y~MAG-PDR  ~r~(10x Peças + 1x Projeto MAG-PDR)", ['perm'] = "motoclub.permissao" }, 
	{ ['id'] = 21, ['x'] = 899.13, ['y'] = -3223.77, ['z'] = -98.26, ['text'] = "MONTAR UMA ~y~MP5  ~r~(10x Peças + 1x Projeto MP5)", ['perm'] = "motoclub.permissao" }, 		
	{ ['id'] = 22, ['x'] = 910.06, ['y'] = -3222.24, ['z'] = -98.26, ['text'] = "MONTAR UMA ~y~THOMPSON  ~r~(12x Peças + 1x Projeto THOMPSON)", ['perm'] = "motoclub.permissao" }, 
	{ ['id'] = 23, ['x'] = 905.71, ['y'] = -3230.46, ['z'] = -98.29, ['text'] = "MONTAR UMA ~y~QBZ  ~r~(15x Peças + 1x Projeto QBZ)", ['perm'] = "motoclub.permissao" }, 		
	{ ['id'] = 24, ['x'] = 896.51, ['y'] = -3217.34, ['z'] = -98.22, ['text'] = "MONTAR UMA ~y~AK-47  ~r~(13x Peças + 1x Projeto AK-47)", ['perm'] = "motoclub.permissao" }, 	
	{ ['id'] = 25, ['x'] = 909.69, ['y'] = -3210.22, ['z'] = -98.22, ['text'] = "MONTAR UMA ~y~SHOT. CANO SERRADO  ~r~(7x Peças + 1x Projeto Cano Serrado)", ['perm'] = "motoclub.permissao" },
	{ ['id'] = 26, ['x'] = 907.75, ['y'] = -3211.08, ['z'] = -98.22, ['text'] = "MONTAR UMA ~y~SHOTGUN  ~r~(6x Peças + 1x Projeto Shotgun)", ['perm'] = "motoclub.permissao" }, 
	{ ['id'] = 27, ['x'] = 884.60, ['y'] = -3199.97, ['z'] = -98.19, ['text'] = "MONTAR UMA ~y~M1911  ~r~(5x Peças + 1x Projeto M1911)", ['perm'] = "motoclub.permissao" }, 	
	-- MUNIÇÕES
	--{ ['id'] = 30, ['x'] = -1630.74, ['y'] = -3009.00, ['z'] = -78.14, ['text'] = "COLETAR ~y~CÁPSULAS", ['perm'] = "bratva.permissao" }, 											
	{ ['id'] = 31, ['x'] = -1637.42, ['y'] = -3009.52, ['z'] = -78.14, ['text'] = "FABRICAR MUNIÇÃO DE ~y~M1911  ~r~(10x Pólvora + 3x Cápsula)", ['perm'] = "bratva.permissao" }, 		
	{ ['id'] = 32, ['x'] = -1636.44, ['y'] = -3012.09, ['z'] = -78.14, ['text'] = "FABRICAR MUNIÇÃO DE ~y~GLOCK  ~r~(10x Pólvora + 5x Cápsula)", ['perm'] = "bratva.permissao" }, 		
	{ ['id'] = 33, ['x'] = -1638.18, ['y'] = -3013.18, ['z'] = -78.14, ['text'] = "FABRICAR MUNIÇÃO DE ~y~M4A1  ~r~(10x Pólvora + 25x Cápsula)", ['perm'] = "bratva.permissao" }, 		
	{ ['id'] = 34, ['x'] = -1641.72, ['y'] = -3013.12, ['z'] = -78.14, ['text'] = "FABRICAR MUNIÇÃO DE ~y~QBZ  ~r~(10x Pólvora + 20x Cápsula)",  ['perm'] = "bratva.permissao" }, 		
	{ ['id'] = 35, ['x'] = -1642.42, ['y'] = -3010.83, ['z'] = -78.14, ['text'] = "FABRICAR MUNIÇÃO DE ~y~AK-47  ~r~(10x Pólvora + 25x Cápsula)",  ['perm'] = "bratva.permissao" },		
	{ ['id'] = 36, ['x'] = -1642.17, ['y'] = -3007.71, ['z'] = -78.14, ['text'] = "FABRICAR MUNIÇÃO DE ~y~THOMPSON  ~r~(10x Pólvora + 25x Cápsula)",  ['perm'] = "bratva.permissao" },	
	{ ['id'] = 37, ['x'] = -1642.81, ['y'] = -3003.62, ['z'] = -78.14, ['text'] = "FABRICAR MUNIÇÃO DE ~y~MPX  ~r~(10x Pólvora + 10x Cápsula)",  ['perm'] = "bratva.permissao" },		
	{ ['id'] = 38, ['x'] = -1641.79, ['y'] = -3002.58, ['z'] = -78.14, ['text'] = "FABRICAR MUNIÇÃO DE ~y~MAG-PDR  ~r~(10x Pólvora + 15x Cápsula)",  ['perm'] = "bratva.permissao" },	
	{ ['id'] = 39, ['x'] = -1639.42, ['y'] = -3002.37, ['z'] = -78.14, ['text'] = "FABRICAR MUNIÇÃO DE ~y~MP5  ~r~(10x Pólvora + 10x Cápsula)",  ['perm'] = "bratva.permissao" },		
	{ ['id'] = 40, ['x'] = -1637.58, ['y'] = -3002.27, ['z'] = -78.14, ['text'] = "FABRICAR MUNIÇÃO DE ~y~SHOTGUN  ~r~(10x Pólvora + 7x Cápsula)",  ['perm'] = "bratva.permissao" },	
	{ ['id'] = 41, ['x'] = -1636.60, ['y'] = -3004.06, ['z'] = -78.14, ['text'] = "FABRICAR MUNIÇÃO DE ~y~SHOT. CANO SERRADO  ~r~(10x Pólvora + 10x Cápsula)",  ['perm'] = "bratva.permissao" },	
	{ ['id'] = 42, ['x'] = -1625.58, ['y'] = -3006.29, ['z'] = -78.14, ['text'] = "MONTAR E PROGRAMAR ~y~C4  ~r~(2x Pólvora + 1x DETONADOR)",  ['perm'] = "bratva.permissao" },			
	-- LosZetas 
	{ ['id'] = 50, ['x'] = 39.94, ['y'] = -2656.03, ['z'] = 12.04, ['text'] = "MONTAR UMA ~y~MAG-PDR  ~r~(10x Peças + 1x Projeto MAG-PDR)", ['perm'] = "loszetas.permissao" },
	{ ['id'] = 51, ['x'] = 37.49, ['y'] = -2656.01, ['z'] = 12.04, ['text'] = "MONTAR UMA ~y~MP5  ~r~(10x Peças + 1x Projeto MP5)", ['perm'] = "loszetas.permissao" },
	{ ['id'] = 52, ['x'] = 40.27, ['y'] = -2676.30, ['z'] = 12.04, ['text'] = "MONTAR UMA ~y~THOMPSON  ~r~(12x Peças + 1x Projeto THOMPSON)", ['perm'] = "loszetas.permissao" },
	{ ['id'] = 53, ['x'] = 28.61, ['y'] = -2676.25, ['z'] = 12.04, ['text'] = "MONTAR UMA ~y~QBZ  ~r~(15x Peças + 1x Projeto QBZ)", ['perm'] = "loszetas.permissao" },
	{ ['id'] = 54, ['x'] = 36.79, ['y'] = -2676.26, ['z'] = 12.04, ['text'] = "MONTAR UMA ~y~AK-47  ~r~(13x Peças + 1x Projeto AK-47)", ['perm'] = "loszetas.permissao" },
	{ ['id'] = 55, ['x'] = 30.41, ['y'] = -2673.00, ['z'] = 12.04, ['text'] = "MONTAR UMA ~y~SHOT. CANO SERRADO  ~r~(7x Peças + 1x Projeto Cano Serrado)", ['perm'] = "loszetas.permissao" 
	{ ['id'] = 56, ['x'] = 28.36, ['y'] = -2670.51, ['z'] = 12.04, ['text'] = "MONTAR UMA ~y~SHOTGUN  ~r~(6x Peças + 1x Projeto Shotgun)", ['perm'] = "loszetas.permissao" },
	{ ['id'] = 57, ['x'] = 38.74, ['y'] = -2659.40, ['z'] = 12.04, ['text'] = "MONTAR UMA ~y~M1911  ~r~(5x Peças + 1x Projeto M1911)", ['perm'] = "loszetas.permissao" },
}

local novaloc = { -- Sem Permissão
	-- MACONHA
	{ ['id'] = 4, ['x'] = -136.56,  ['y'] = -1610.80, ['z'] = 35.03,  	['text'] = "~y~ENROLAR OS BASEADOS  ~r~(10x Maconha Mist. + 10x Seda)" },
	-- COCAÍNA
	{ ['id'] = 8, ['x'] = 122.62, ['y'] = -1973.86, ['z'] = 21.33, 	['text'] = "~y~ENDOLAR A COCAÍNA  ~r~(10x Cocaína Mist. + 10x ZipLock)" }, 
}
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