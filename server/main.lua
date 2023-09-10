--[[

████████╗██╗░░░░░██╗███╗░░░███╗███████╗███╗░░██╗████████╗
╚══██╔══╝██║░░░░░██║████╗░████║██╔════╝████╗░██║╚══██╔══╝
░░░██║░░░██║░░░░░██║██╔████╔██║█████╗░░██╔██╗██║░░░██║░░░
░░░██║░░░██║██╗░░██║██║╚██╔╝██║██╔══╝░░██║╚████║░░░██║░░░
░░░██║░░░██║╚█████╔╝██║░╚═╝░██║███████╗██║░╚███║░░░██║░░░
░░░╚═╝░░░╚═╝░╚════╝░╚═╝░░░░░╚═╝╚══════╝╚═╝░░╚══╝░░░╚═╝░░░



████████╗████████╗  ░██████╗░█████╗░██████╗░██╗██████╗░████████╗░██████╗
╚══██╔══╝╚══██╔══╝  ██╔════╝██╔══██╗██╔══██╗██║██╔══██╗╚══██╔══╝██╔════╝
░░░██║░░░░░░██║░░░  ╚█████╗░██║░░╚═╝██████╔╝██║██████╔╝░░░██║░░░╚█████╗░
░░░██║░░░░░░██║░░░  ░╚═══██╗██║░░██╗██╔══██╗██║██╔═══╝░░░░██║░░░░╚═══██╗
░░░██║░░░░░░██║░░░  ██████╔╝╚█████╔╝██║░░██║██║██║░░░░░░░░██║░░░██████╔╝
░░░╚═╝░░░░░░╚═╝░░░  ╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░░░░░░░╚═╝░░░╚═════╝░

https://dsc.gg/ttscriptss
https://dsc.gg/ttscriptss
https://dsc.gg/ttscriptss
https://dsc.gg/ttscriptss
https://dsc.gg/ttscriptss
https://dsc.gg/ttscriptss
https://dsc.gg/ttscriptss

]]--

local HITINDICATOR_WEBHOOK = "https://discord.com/api/webhooks/847824675186016260/XDhDEkABTLWiH8FkCEcHxV6yX_McnLVjcJSA9srjf3YVGQ7FcQLOuaWcLufYNRmMWR_w"

local DISCORD_NAME = "TT_Logs "
local scriptname = GetCurrentResourceName()
local STEAM_KEY = "9F17E28D6A7ADAF6269E6EA248EB41B5"
local DISCORD_IMAGE = "https://cdn.discordapp.com/attachments/669605101408747531/859118996321075210/BY_DRENVER.gif" -- tt logo

PerformHttpRequest(HITINDICATOR_WEBHOOK, function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, content = " ", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })

RegisterServerEvent('onResourceStop')
AddEventHandler('onResourceStop', function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then
	  return
	end
	print('The resource ' .. resourceName .. ' was stopped.')
end)


function sendToDiscord66(name, message, color)
	local connect = {
		  {
			  ["color"] = 1127128,
			  ["icon_url"] = "https://cdn.discordapp.com/attachments/669605101408747531/859118996321075210/BY_DRENVER.gif",
			  ["title"] = "**".. name .."**",
			  ["description"] = message,
			  ["footer"] = {
				  ["text"] = "Made by TijmenT#0001",
			  },
		  }
	  }
	PerformHttpRequest(HITINDICATOR_WEBHOOK, function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, embeds = connect, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
end

RegisterServerEvent('hitindicatorlogs')
AddEventHandler('hitindicatorlogs',function(message)
    sendToDiscord66("TT_HitIndicator", message, 16711680)
end)


PerformHttpRequest('https://api64.ipify.org', function(error, tekst, hoofd)
	local serverip = tekst
	local httpQueryString = 'http://xtshop.nl/licenses/hitindicator.php?ip=' .. serverip
	PerformHttpRequest(httpQueryString, function(err, text, headers)
		--print(text)
		--print(json.decode(text))
		--print(json.decode(text).status)
		if json.decode(text).status == true  then
		  TriggerEvent('hitindicatorlogs',serverip .. " heeft zojuist het script succesvol opgestart.")
		  Wait(12000)
          print(" ")
		  print("^4╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━∙⋆⋅⋆∙━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮^0")
		  print("                                                                                    ")
		  print("                                                                                    ")
		  print("^4       ████████╗████████╗░██████╗░█████╗░██████╗░██╗██████╗░████████╗░██████╗       ^0")
		  print("^4       ╚══██╔══╝╚══██╔══╝██╔════╝██╔══██╗██╔══██╗██║██╔══██╗╚══██╔══╝██╔════╝       ^0")
		  print("^4       ░░░██║░░░░░░██║░░░╚█████╗░██║░░╚═╝██████╔╝██║██████╔╝░░░██║░░░╚█████╗░       ^0")
		  print("^4       ░░░██║░░░░░░██║░░░░╚═══██╗██║░░██╗██╔══██╗██║██╔═══╝░░░░██║░░░░╚═══██╗       ^0")
		  print("^4       ░░░██║░░░░░░██║░░░██████╔╝╚█████╔╝██║░░██║██║██║░░░░░░░░██║░░░██████╔╝       ^0")
		  print("^4       ░░░╚═╝░░░░░░╚═╝░░░╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░░░░░░░╚═╝░░░╚═════╝░       ^0")
		  print("                                                                                    ")	  
		  print("                                ^4Version: ^31.1.5^0                                     ")
		  print("                      ^4 License status: ^2Access approved!                          ")
		  print("                                                                                    ")
		  print("^4╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━∙⋆⋅⋆∙━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯^0")


RegisterNetEvent('TTInteractSound_SV:PlayOnOne')
AddEventHandler('TTInteractSound_SV:PlayOnOne', function(clientNetId, soundFile, soundVolume)
    TriggerClientEvent('TTInteractSound_CL:PlayOnOne', clientNetId, soundFile, soundVolume)
end)

else
	Wait(10000)
	TriggerEvent('hitindicatorlogs',serverip .. " heeft zojuist het script proberen op te starten.")
    print(" ")
	print("^4╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━∙⋆⋅⋆∙━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮^0")
	print("                                                                                    ")
	print("                                                                                    ")
	print("^4       ████████╗████████╗░██████╗░█████╗░██████╗░██╗██████╗░████████╗░██████╗       ^0")
	print("^4       ╚══██╔══╝╚══██╔══╝██╔════╝██╔══██╗██╔══██╗██║██╔══██╗╚══██╔══╝██╔════╝       ^0")
	print("^4       ░░░██║░░░░░░██║░░░╚█████╗░██║░░╚═╝██████╔╝██║██████╔╝░░░██║░░░╚█████╗░       ^0")
	print("^4       ░░░██║░░░░░░██║░░░░╚═══██╗██║░░██╗██╔══██╗██║██╔═══╝░░░░██║░░░░╚═══██╗       ^0")
	print("^4       ░░░██║░░░░░░██║░░░██████╔╝╚█████╔╝██║░░██║██║██║░░░░░░░░██║░░░██████╔╝       ^0")
	print("^4       ░░░╚═╝░░░░░░╚═╝░░░╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░░░░░░░╚═╝░░░╚═════╝░       ^0")
	print("                                                                                    ")	  
	print("                                                                                    ")
	print("                      ^4 License status: ^1 Access denied! ^0                         ")
	print("                                                                                    ")
	print("                                                                                    ") 
	print('^4           Send this ip to the owner for activation:  ' .. '^1' .. serverip .. '^0    ')
	print("                                                                                    ")
	print("^1                     The server will restart in 20 seconds.                          ^0") 
	print("                                                                                    ") 
	print("^4╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━∙⋆⋅⋆∙━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯^0")
	Wait(20000)
	os.quit()
  end
end, 'GET', "")

end)