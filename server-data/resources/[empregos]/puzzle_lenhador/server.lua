local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
emP = {}
Tunnel.bindInterface("puzzle_lenhador",emP)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES
-----------------------------------------------------------------------------------------------------------------------------------------
local madeiras = {}
function emP.Woods()
	local source = source
	if madeiras[source] == nil then
		madeiras[source] = math.random(5,7)
	end
end

function emP.ReceiveWoods()
	emP.Woods()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("tora")*madeiras[source] <= vRP.getInventoryMaxWeight(user_id) then
			vRP.giveInventoryItem(user_id,"tora",madeiras[source])
			madeiras[source] = nil
			return true
		else
			TriggerClientEvent("Notify",source,"negado","<b>Mochila</b> cheia.")
			return false
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ENTREGAS
-----------------------------------------------------------------------------------------------------------------------------------------
local quantidade = {}
function emP.Quantidade()
	local source = source
	if quantidade[source] == nil then
	   quantidade[source] = math.random(10,10)	
	end
	   TriggerClientEvent("quantidade-tora",source,parseInt(quantidade[source]))
end

local tora = {}
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        for k,v in pairs(tora) do
            if v > 0 then
                tora[k] = v - 1
            end
        end
    end
end)

function emP.checkPayment()
	emP.Quantidade()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if tora[user_id] == 0 or not tora[user_id] then
			if vRP.tryGetInventoryItem(user_id,"tora",quantidade[source]) then
				randmoney = (math.random(80,85)*quantidade[source])
		        vRP.giveMoney(user_id,parseInt(randmoney))
		        TriggerClientEvent("vrp_sound:source",source,'coins',0.5)
		        TriggerClientEvent("Notify",source,"sucesso","Você recebeu <b>$"..vRP.format(parseInt(randmoney)).."</b>.")
				quantidade[source] = nil
				emP.Quantidade()
				tora[user_id] = 15
				return true
			else
				TriggerClientEvent("Notify",source,"negado","Você precisa de <b>"..quantidade[source].."x Toras de Madeira</b>.")
			end
		else
			SendWebhookMessage(webhookmonster,"```prolog\n[ID]: "..user_id.." \n[TENTOU USAR MONSTERMENU E FOI PEGO NO PULO]\n>>>> "..quantidade[source].." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```<@&641048265856647169>")
			--TriggerClientEvent("Notify",source,"importante","Você precisa aguardar <b>"..tora[user_id].." segundos</b> para realizar outra entrega.")
		end
	end
	return false
end