local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
func = {}
Tunnel.bindInterface("vrp_trafico",func)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES
-----------------------------------------------------------------------------------------------------------------------------------------
function func.checkPermission(perm)
	local source = source
	local user_id = vRP.getUserId(source)
	return vRP.hasPermission(user_id,perm)
end

local src = { -- 2 REAGENTES
	-- MACONHA
	[4] = { ['re'] = "maconhamisturada", ['reqtd'] = 10, ['re2'] = "seda", ['reqtd2'] = 10, ['item'] = "baseado", ['itemqtd'] = 10 },
	-- COCAÍNA
	[8] = { ['re'] = "cocamisturada", ['reqtd'] = 10, ['re2'] = "ziplock", ['reqtd2'] = 10, ['item'] = "cocaina", ['itemqtd'] = 10 },
	-- MOTOCLUBE
	[20] = { ['re'] = "pecadearma", ['reqtd'] = 10, ['re2'] = "projetoassaultsmg",     ['reqtd2'] = 1, ['item'] = "wbody|WEAPON_ASSAULTSMG", ['itemqtd'] = 1 },
	[21] = { ['re'] = "pecadearma", ['reqtd'] = 10, ['re2'] = "projetosmg",            ['reqtd2'] = 1, ['item'] = "wbody|WEAPON_SMG", ['itemqtd'] = 1 },
	[22] = { ['re'] = "pecadearma", ['reqtd'] = 12, ['re2'] = "projetogusenberg",      ['reqtd2'] = 1, ['item'] = "wbody|WEAPON_GUSENBERG", ['itemqtd'] = 1 },
	[23] = { ['re'] = "pecadearma", ['reqtd'] = 15, ['re2'] = "projetobullpuprifle",   ['reqtd2'] = 1, ['item'] = "wbody|WEAPON_BULLPUPRIFLE", ['itemqtd'] = 1 },
	[24] = { ['re'] = "pecadearma", ['reqtd'] = 13, ['re2'] = "projetoassaultrifle",   ['reqtd2'] = 1, ['item'] = "wbody|WEAPON_ASSAULTRIFLE", ['itemqtd'] = 1 },
	[25] = { ['re'] = "pecadearma", ['reqtd'] = 7,  ['re2'] = "projetosawnoffshotgun", ['reqtd2'] = 1, ['item'] = "wbody|WEAPON_SAWNOFFSHOTGUN", ['itemqtd'] = 1 },
	[26] = { ['re'] = "pecadearma", ['reqtd'] = 6,  ['re2'] = "projetopumpshotgun",    ['reqtd2'] = 1, ['item'] = "wbody|WEAPON_PUMPSHOTGUN", ['itemqtd'] = 1 },
	[27] = { ['re'] = "pecadearma", ['reqtd'] = 5,  ['re2'] = "projetopistol",    	   ['reqtd2'] = 1, ['item'] = "wbody|WEAPON_PISTOL", ['itemqtd'] = 1 },
	-- merryweather MUNIÇÃO
	--[30] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "capsula", ['itemqtd'] = 20 },
	[31] = { ['re'] = "polvora", ['reqtd'] = 10, ['re2'] = "capsula", ['reqtd2'] = 3, ['item'] = "wammo|WEAPON_PISTOL", ['itemqtd'] = 250 },
	[32] = { ['re'] = "polvora", ['reqtd'] = 10, ['re2'] = "capsula", ['reqtd2'] = 5, ['item'] = "wammo|WEAPON_COMBATPISTOL", ['itemqtd'] = 250 },
	[33] = { ['re'] = "polvora", ['reqtd'] = 10, ['re2'] = "capsula", ['reqtd2'] = 25, ['item'] = "wammo|WEAPON_CARBINERIFLE", ['itemqtd'] = 250 },
	[34] = { ['re'] = "polvora", ['reqtd'] = 10, ['re2'] = "capsula", ['reqtd2'] = 20, ['item'] = "wammo|WEAPON_BULLPUPRIFLE", ['itemqtd'] = 250 },
	[35] = { ['re'] = "polvora", ['reqtd'] = 10, ['re2'] = "capsula", ['reqtd2'] = 25, ['item'] = "wammo|WEAPON_ASSAULTRIFLE", ['itemqtd'] = 250 },
	[36] = { ['re'] = "polvora", ['reqtd'] = 10, ['re2'] = "capsula", ['reqtd2'] = 25, ['item'] = "wammo|WEAPON_GUSENBERG", ['itemqtd'] = 250 },
	[37] = { ['re'] = "polvora", ['reqtd'] = 10, ['re2'] = "capsula", ['reqtd2'] = 10, ['item'] = "wammo|WEAPON_COMBATPDW", ['itemqtd'] = 250 },
	[38] = { ['re'] = "polvora", ['reqtd'] = 10, ['re2'] = "capsula", ['reqtd2'] = 15, ['item'] = "wammo|WEAPON_ASSAULTSMG", ['itemqtd'] = 250 },
	[39] = { ['re'] = "polvora", ['reqtd'] = 10, ['re2'] = "capsula", ['reqtd2'] = 10, ['item'] = "wammo|WEAPON_SMG", ['itemqtd'] = 250 },
	[40] = { ['re'] = "polvora", ['reqtd'] = 10, ['re2'] = "capsula", ['reqtd2'] = 7, ['item'] = "wammo|WEAPON_PUMPSHOTGUN", ['itemqtd'] = 250 },
	[41] = { ['re'] = "polvora", ['reqtd'] = 10, ['re2'] = "capsula", ['reqtd2'] = 10, ['item'] = "wammo|WEAPON_SAWNOFFSHOTGUN", ['itemqtd'] = 250 },
	[42] = { ['re'] = "detonador", ['reqtd'] = 1, ['re2'] = "polvora", ['reqtd2'] = 2, ['item'] = "c4", ['itemqtd'] = 1 },
	-- LosZetas Armas
	[50] = { ['re'] = "pecadearma", ['reqtd'] = 10, ['re2'] = "projetoassaultsmg",     ['reqtd2'] = 1, ['item'] = "wbody|WEAPON_ASSAULTSMG", ['itemqtd'] = 1 },
	[51] = { ['re'] = "pecadearma", ['reqtd'] = 10, ['re2'] = "projetosmg",            ['reqtd2'] = 1, ['item'] = "wbody|WEAPON_SMG", ['itemqtd'] = 1 },
	[52] = { ['re'] = "pecadearma", ['reqtd'] = 12, ['re2'] = "projetogusenberg",      ['reqtd2'] = 1, ['item'] = "wbody|WEAPON_GUSENBERG", ['itemqtd'] = 1 },
	[53] = { ['re'] = "pecadearma", ['reqtd'] = 15, ['re2'] = "projetobullpuprifle",   ['reqtd2'] = 1, ['item'] = "wbody|WEAPON_BULLPUPRIFLE", ['itemqtd'] = 1 },
	[54] = { ['re'] = "pecadearma", ['reqtd'] = 13, ['re2'] = "projetoassaultrifle",   ['reqtd2'] = 1, ['item'] = "wbody|WEAPON_ASSAULTRIFLE", ['itemqtd'] = 1 },
	[55] = { ['re'] = "pecadearma", ['reqtd'] = 7,  ['re2'] = "projetosawnoffshotgun", ['reqtd2'] = 1, ['item'] = "wbody|WEAPON_SAWNOFFSHOTGUN", ['itemqtd'] = 1 },
	[56] = { ['re'] = "pecadearma", ['reqtd'] = 6,  ['re2'] = "projetopumpshotgun",    ['reqtd2'] = 1, ['item'] = "wbody|WEAPON_PUMPSHOTGUN", ['itemqtd'] = 1 },
	[57] = { ['re'] = "pecadearma", ['reqtd'] = 5,  ['re2'] = "projetopistol",    	   ['reqtd2'] = 1, ['item'] = "wbody|WEAPON_PISTOL", ['itemqtd'] = 1 },
}

--FUNCIONANDO PARA 2 ITENS
function func.checkPayment(id)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if src[id].re ~= nil then
			if vRP.getInventoryWeight(user_id)+vRP.getItemWeight(src[id].item)*src[id].itemqtd <= vRP.getInventoryMaxWeight(user_id) then
			  if vRP.getInventoryItemAmount(user_id, src[id].re) >= src[id].reqtd and vRP.getInventoryItemAmount(user_id, src[id].re2) >= src[id].reqtd2 then 
				if vRP.tryGetInventoryItem(user_id,src[id].re,src[id].reqtd,false) and vRP.tryGetInventoryItem(user_id,src[id].re2,src[id].reqtd2,false) then
					vRP.giveInventoryItem(user_id,src[id].item,src[id].itemqtd,false)
					vRPclient._playAnim(source,false,{{"mini@repair","fixing_a_ped"}},true)
					return true
				end
			  end
			end
		else
			if vRP.getInventoryWeight(user_id)+vRP.getItemWeight(src[id].item)*src[id].itemqtd <= vRP.getInventoryMaxWeight(user_id) then
				vRP.giveInventoryItem(user_id,src[id].item,src[id].itemqtd,false)
				vRPclient._playAnim(source,false,{{"mini@repair","fixing_a_ped"}},true)
				return true
			end
		end
	end
end