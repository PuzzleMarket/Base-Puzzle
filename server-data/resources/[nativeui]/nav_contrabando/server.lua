local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- ARRAY
-----------------------------------------------------------------------------------------------------------------------------------------
local valores = {
	--{ item = "projetoassaultrifle", quantidade = 1, compra = 10000‬, venda = 10 },
	{ item = "projetoassaultrifle", quantidade = 1, compra = 70000, venda = 10 },  -- 80k
	{ item = "projetoassaultsmg", 	quantidade = 1, compra = 50000, venda = 10 },  -- 60k
	{ item = "projetobullpuprifle", quantidade = 1, compra = 80000, venda = 10 },  -- 90k
	{ item = "projetogusenberg", 	quantidade = 1, compra = 70000, venda = 10 },  -- 80k
	{ item = "projetopistol", 		quantidade = 1, compra = 5000, venda = 10 },  -- 10k
	{ item = "projetopumpshotgun", 	quantidade = 1, compra = 18000, venda = 0 },   -- 25k
	{ item = "projetosawnoffshotgun", quantidade = 1, compra = 20000, venda = 0 }, -- 27k
	{ item = "projetosmg", 			quantidade = 1, compra = 35000, venda = 0 },   -- 45k

	{ item = "algemas", 	quantidade = 1, 	compra = 2000, venda = 10000 },
	{ item = "capuz", 		quantidade = 1, 	compra = 2000, venda = 10000 },
	{ item = "lockpick", 	quantidade = 1, 	compra = 3000, venda = 1000 },
	{ item = "masterpick", 	quantidade = 1, 	compra = 6000, venda = 2500 },
	{ item = "pendrive",	quantidade = 1, 	compra = 25000, venda = 4000 },
	{ item = "keycard", 	quantidade = 1, 	compra = 25000, venda = 5000 },
	{ item = "c4", 			quantidade = 1, 	compra = 30000, venda = 5000 },
	{ item = "serra", 		quantidade = 1, 	compra = 16000, venda = 5000 },
	{ item = "furadeira", 	quantidade = 1, 	compra = 16000, venda = 5000 },
	{ item = "capsula", 	quantidade = 1, 	compra = 1000, 	venda = 500 },
	--{ item = "placa", 		quantidade = 1, 	compra = 30000, venda = 15000 },
	{ item = "impostoderendafalso", quantidade = 1, compra = 2500, venda = 0 },

}
-----------------------------------------------------------------------------------------------------------------------------------------
-- COMPRAR LIMPÒ
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("contrabando-comprar")
AddEventHandler("contrabando-comprar",function(item)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		for k,v in pairs(valores) do
			if item == v.item then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight(v.item)*v.quantidade <= vRP.getInventoryMaxWeight(user_id) then
					if vRP.tryPayment(user_id,parseInt(v.compra)) then
						vRP.giveInventoryItem(user_id,v.item,parseInt(v.quantidade))
						TriggerClientEvent("Notify",source,"sucesso","Comprou <b>"..parseInt(v.quantidade).."x "..vRP.itemNameList(v.item).."</b> por <b>$"..vRP.format(parseInt(v.compra)).." dólares</b>.")
					else
						TriggerClientEvent("Notify",source,"negado","Dinheiro insuficiente.")
					end
				else
					TriggerClientEvent("Notify",source,"negado","Espaço insuficiente.")
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VENDER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("contrabando-vender")
AddEventHandler("contrabando-vender",function(item)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		for k,v in pairs(valores) do
			if item == v.item then
				if vRP.tryGetInventoryItem(user_id,v.item,parseInt(v.quantidade)) then
					vRP.giveMoney(user_id,parseInt(v.venda))
					TriggerClientEvent("Notify",source,"sucesso","Vendeu <b>"..parseInt(v.quantidade).."x "..vRP.itemNameList(v.item).."</b> por <b>$"..vRP.format(parseInt(v.venda)).." dólares</b>.")
				else
					TriggerClientEvent("Notify",source,"negado","Não possui <b>"..parseInt(v.quantidade).."x "..vRP.itemNameList(v.item).."</b> em sua mochila.")
				end
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
--[[ COMPRAR  SUJO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("contrabando-comprar")
AddEventHandler("contrabando-comprar",function(item)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		for k,v in pairs(valores) do
			if item == v.item then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight(v.item)*v.quantidade <= vRP.getInventoryMaxWeight(user_id) then
					if vRP.tryGetInventoryItem(user_id,"dinheirosujo",v.compra) then
						vRP.giveInventoryItem(user_id,v.item,parseInt(v.quantidade))
						TriggerClientEvent("Notify",source,"sucesso","Comprou <b>"..parseInt(v.quantidade).."x "..vRP.itemNameList(v.item).."</b> por <b>$"..vRP.format(parseInt(v.compra)).." dólares sujos</b>.")
					else
						TriggerClientEvent("Notify",source,"negado","Dinheiro sujo insuficiente.")
					end
				else
					TriggerClientEvent("Notify",source,"negado","Espaço insuficiente.")
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VENDER SUJO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("contrabando-vender")
AddEventHandler("contrabando-vender",function(item)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		for k,v in pairs(valores) do
			if item == v.item then
				if vRP.tryGetInventoryItem(user_id,v.item,parseInt(v.quantidade)) then
					vRP.giveInventoryItem(user_id,"dinheirosujo",parseInt(v.venda))
					TriggerClientEvent("Notify",source,"sucesso","Vendeu <b>"..parseInt(v.quantidade).."x "..vRP.itemNameList(v.item).."</b> por <b>$"..vRP.format(parseInt(v.venda)).." dólares sujos</b>.")
				else
					TriggerClientEvent("Notify",source,"negado","Não possui <b>"..parseInt(v.quantidade).."x "..vRP.itemNameList(v.item).."</b> em sua mochila.")
				end
			end
		end
	end
end)]]