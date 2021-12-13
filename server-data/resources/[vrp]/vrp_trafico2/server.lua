local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
func = {}
Tunnel.bindInterface("vrp_trafico2",func)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES
-----------------------------------------------------------------------------------------------------------------------------------------
function func.checkPermission(perm)
	local source = source
	local user_id = vRP.getUserId(source)
	return vRP.hasPermission(user_id,perm)
end

local src = {
	-- MACONHA
	[1] = { ['re'] = nil, ['reqtd'] = nil, 			 			['item'] = "ramosdemaconha", ['itemqtd'] = 10 },
	[2] = { ['re'] = "ramosdemaconha", ['reqtd'] = 10, 			['item'] = "maconhanaoprocessada", ['itemqtd'] = 10 },
	[3] = { ['re'] = "maconhanaoprocessada", ['reqtd'] = 10, 	['item'] = "maconhamisturada", ['itemqtd'] = 20 },
	-- COCAÍNA
	[5] = { ['re'] = nil, ['reqtd'] = nil, 						['item'] = "folhadecoca", ['itemqtd'] = 10 },
	[6] = { ['re'] = "folhadecoca", ['reqtd'] = 10, 			['item'] = "pastadecoca", ['itemqtd'] = 10 },
	[7] = { ['re'] = "pastadecoca", ['reqtd'] = 10, 			['item'] = "cocamisturada", ['itemqtd'] = 20 },
	-- LAVAGEM DE DINHEIRO
	[50] = { ['re'] = "impostoderendafalso", ['reqtd'] = 1, 	['item'] = "impostoderenda", ['itemqtd'] = 1 },
	-- Merryweather
	[61] = { ['re'] = nil, ['reqtd'] = nil, 					['item'] = "serra", ['itemqtd'] = 1 },
	[62] = { ['re'] = nil, ['reqtd'] = nil, 					['item'] = "furadeira", ['itemqtd'] = 1 },
	[63] = { ['re'] = nil, ['reqtd'] = nil, 					['item'] = "keycard", ['itemqtd'] = 1 },
	[64] = { ['re'] = nil, ['reqtd'] = nil, 					['item'] = "c4", ['itemqtd'] = 1 },
	[65] = { ['re'] = nil, ['reqtd'] = nil, 					['item'] = "pendrive", ['itemqtd'] = 1 },
	[66] = { ['re'] = nil, ['reqtd'] = nil, 					['item'] = "capuz", ['itemqtd'] = 1, ['item2'] = "algemas", ['itemqtd2'] = 1 },
	-- Repairkit
	[70] = { ['re'] = "ferramenta", ['reqtd'] = 10, 			['item'] = "repairkit", ['itemqtd'] = 1, },
	-- Tartaruga
	[71] = { ['re'] = "tartaruga", ['reqtd'] = 3, 				['item'] = "carnedetartaruga", ['itemqtd'] = 3 },
}

---------------------------------------------------------   
-- LÓGICA PARA APENAS [ 1 ] ITEM
---------------------------------------------------------
function func.checkPayment(id)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if src[id].re ~= nil then
			if vRP.getInventoryWeight(user_id)+vRP.getItemWeight(src[id].item)*src[id].itemqtd <= vRP.getInventoryMaxWeight(user_id) then
				if vRP.tryGetInventoryItem(user_id,src[id].re,src[id].reqtd,false) then
					vRP.giveInventoryItem(user_id,src[id].item,src[id].itemqtd,false)
					vRP.giveInventoryItem(user_id,src[id].item2,src[id].itemqtd2,false)
					vRPclient._playAnim(source,false,{{"mini@repair","fixing_a_ped"}},true)
					return true
				end
			end
		else
			if vRP.getInventoryWeight(user_id)+vRP.getItemWeight(src[id].item)*src[id].itemqtd <= vRP.getInventoryMaxWeight(user_id) then
				vRP.giveInventoryItem(user_id,src[id].item,src[id].itemqtd,false)
				vRP.giveInventoryItem(user_id,src[id].item2,src[id].itemqtd2,false)
				vRPclient._playAnim(source,false,{{"mini@repair","fixing_a_ped"}},true)
				return true
			end
		end
	end
end