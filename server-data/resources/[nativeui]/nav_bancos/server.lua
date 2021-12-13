local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
local idgens = Tools.newIDGenerator()
vRPN = {}
Tunnel.bindInterface("nav_bancos",vRPN)
Proxy.addInterface("nav_bancos",vRPN)
-----------------------------------------------------------------------------------------------------------------------------------------
-- WEBHOOK
-----------------------------------------------------------------------------------------------------------------------------------------
local webhookbanco = ""

function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CAIXA ELETRÔNICO
-----------------------------------------------------------------------------------------------------------------------------------------
local caixas = {}
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		for k,v in pairs(caixas) do
			if v > 0 then
				caixas[k] = v - 1
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DEPOSITAR
-----------------------------------------------------------------------------------------------------------------------------------------
function vRPN.Depositar(valor)
    local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
    if user_id then
        if parseInt(valor) > 0 then
            if vRP.tryDeposit(user_id,parseInt(valor)) then
				vRP.tryGetInventoryItem(user_id,"logsinvasao",1)
				SendWebhookMessage(webhookbanco,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[DEPOSITOU]: $"..vRP.format(parseInt(valor)).." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                TriggerClientEvent("Notify",source,"sucesso","Depositou <b>$"..vRP.format(parseInt(valor)).." dólares</b> em sua conta bancária.")
            else
                TriggerClientEvent("Notify",source,"negado","Não possui <b>$"..vRP.format(parseInt(valor)).." dólares</b> em sua carteira.")
            end
        end
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SACAR
-----------------------------------------------------------------------------------------------------------------------------------------
function vRPN.Sacar(valor)
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if user_id then
		if valor then
			if parseInt(valor) > 0 then
				if vRP.tryWithdraw(user_id,parseInt(valor)) then
					SendWebhookMessage(webhookbanco,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[SACOU]: $"..vRP.format(parseInt(valor)).." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
					TriggerClientEvent("Notify",source,"sucesso","Sacou <b>$"..vRP.format(parseInt(valor)).." dólares</b> de sua conta bancária.")
				else
					TriggerClientEvent("Notify",source,"negado","Não possui <b>$"..vRP.format(parseInt(valor)).." dólares</b> em sua conta bancária.")
				end
			end
		else
			if caixas[user_id] == 0 or not caixas[user_id] then
				if vRP.tryWithdraw(user_id,1000) then
					caixas[user_id] = 600
					vRPclient._playAnim(source,false,{{"amb@prop_human_atm@male@exit","exit"}},false)
					Citizen.Wait(4000)
					TriggerClientEvent("Notify",source,"sucesso","Sacou <b>$1.000 dólares</b> de sua conta bancária.")
				else
					TriggerClientEvent("Notify",source,"negado","Não possui <b>$1.000 dólares</b> em sua conta bancária.")
				end
			else
				TriggerClientEvent("Notify",source,"importante","Aguarde <b>"..caixas[user_id].." segundos</b> para efetuar outro saque.")
			end
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- MULTAS
-----------------------------------------------------------------------------------------------------------------------------------------
function vRPN.Multas(valor)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local value = vRP.getUData(parseInt(user_id),"vRP:multas")
		local multas = json.decode(value) or 0
		if parseInt(valor) > 0 then
			if parseInt(multas) > 0 and parseInt(valor) > 0 and parseInt(valor) <= parseInt(multas) then
				if vRP.tryFullPayment(user_id,parseInt(valor)) then
					vRP.setUData(user_id,"vRP:multas",json.encode(parseInt(multas)-parseInt(valor)))
					TriggerClientEvent("Notify",source,"importante","Pagou <b>$"..vRP.format(parseInt(valor)).."</b> em multas.")
				else
					TriggerClientEvent("Notify",source,"negado","Dinheiro insuficiente.")
				end
			else
				TriggerClientEvent("Notify",source,"negado","Valor inválido.")
			end
		else
			if parseInt(multas) <= 0 then
				TriggerClientEvent("Notify",source,"aviso","Multas inexistentes.")
			else
				TriggerClientEvent("Notify",source,"aviso","<b>$"..vRP.format(parseInt(multas)).." dólares</b> em multas a pagar.")
			end
		end
	end
end