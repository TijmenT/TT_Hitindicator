--[[


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

local colors = {
    Green = '#55FF00',
    Blue = '#0051FF',
    Pink = '#FF00E0',
    Yellow = '#F7FF00',
    Red = '#FF001B',
    Purple = '#5900FF',
    Orange = '#FFA200',
    Cyan = '#00FFF3',
    green = '#55FF00',
    blue = '#0051FF',
    pink = '#FF00E0',
    yellow = '#F7FF00',
    red = '#FF001B',
    purple = '#5900FF',
    orange = '#FFA200',
    cyan = '#00FFF3',
    groen = '#55FF00',
    blauw = '#0051FF',
    roze = '#FF00E0',
    geel = '#F7FF00',
    rood = '#FF001B',
    paars = '#5900FF',
    oranje = '#FFA200',
    cyaan = '#00FFF3',
    Groen = '#55FF00',
    Blauw = '#0051FF',
    Roze = '#FF00E0',
    Geel = '#F7FF00',
    Rood = '#FF001B',
    Paars = '#5900FF',
    Oranje = '#FFA200',
    Cyaan = '#00FFF3'
}

local unvalidweapons = {
    [-1569615261] = true,
    [-1716189206] = true,
    [1737195953] = true,
    [1317494643] = true,
    [-1786099057] = true,
    [-2067956739] = true,
    [1141786504] = true,
    [-102323637] = true,
    [-1834847097] = true,
    [-102973651] = true,
    [-656458692] = true,
    [-581044007] = true,
    [-1951375401] = true,
    [-538741184] = true,
    [-1810795771] = true,
    [419712736] = true,
    [-853065399] = true,
    [-1813897027] = true,
    [741814745] = true,
    [-1420407917] = true,
    [-1600701090] = true,
    [615608432] = true,
    [101631238] = true,
    [883325847] = true,
    [1233104067] = true,
    [600439132] = true,
    [126349499] = true,
    [-37975472] = true,
    [-1169823560] = true,
    [-72657034] = true,
    [-1568386805] = true,
    [-1312131151] = true,
    [2138347493] = true,
    [1834241177] = true,
    [1672152130] = true,
    [1305664598] = true,
    [125959754] = true

}

local OutColor = Config.IndicatorColor
local OutHitSound = Config.HitSound
local OutHeadshotSound = Config.HeadshotHitSound
local OutVolume = Config.HitSoundVolume
    function informmessage()
        if Config.AutoEnable == true then
            hitscript = true
            Citizen.Wait(0)
            SendAlert('inform', 'Hits are on!', 4000, { ['background-color'] = '#111',  ['color'] = '#08FF00' })
            Citizen.Wait(4000)
            SendAlert('inform', 'Type: /hithelp for more info', 10000, { ['background-color'] = '#111',  ['color'] = Config.UIColor })
        else
            Citizen.Wait(0)
            SendAlert('inform', 'Hits are off!', 4000, { ['background-color'] = '#111',  ['color'] = '#FF0000' })
            Citizen.Wait(4000)
            SendAlert('inform', 'Type: /hithelp for more info', 10000, { ['background-color'] = '#111',  ['color'] = Config.UIColor })
            hitscript = false
        end
    end

    RegisterCommand("hithelp", function()
        SendNotification({
            text = "To turn it on/off type /hiton  or /hitoff",
            type = 'topRight',
            timeout = 20000,
        })
        SendNotification({
            text = "To change soundvolume type: /hitvolume (must be between 0.1 and 1.0)",
            type = 'topRight',
            timeout = 20000,
        })
        Citizen.Wait(10)
        SendNotification({
            text = "Sounds: rust, cod, fortnite, skeet, minecraft, csgo, off",
            type = 'topRight',
            timeout = 20000,
        })
        Citizen.Wait(10)
        SendNotification({
            text = "To change sounds type: /hitsound sound",
            type = 'topRight',
            timeout = 20000,
        })
        Citizen.Wait(10)
        SendNotification({
            text = "Colors: Green, Blue, Pink, Yellow, Red, Purple, Orange, Cyan",
            type = 'topRight',
            timeout = 20000,
        })
        Citizen.Wait(10)
        SendNotification({
            text = "To change colors type: /hitcolor color",
            type = 'topRight',
            timeout = 20000,
        })
        Citizen.Wait(10)
        SendNotification({
            text = "Here are the hitindicator options:",
            type = 'topRight',
            timeout = 20000,
        })
        Citizen.Wait(10)
        SendNotification({
            text = "Welcome to TT_HitIndicator",
            type = 'topRight',
            timeout = 20000,
        })
        
        
    end)
    
    RegisterCommand("hitoff", function()
        hitscript = false
        SendAlert('inform', 'Hits have been turned off!', 2000, { ['background-color'] = '#111',  ['color'] = '#FF0000' })
        Citizen.Wait(1000)
        SendAlert('inform', 'Type: /hiton to turn on hitindicators', 2500, { ['background-color'] = '#111',  ['color'] = Config.UIColor })
    end)
    
    RegisterCommand("hiton", function()
        hitscript = true
        SendAlert('inform', 'Hits have been turned on!', 2000, { ['background-color'] = '#111',  ['color'] = '#08FF00' })
        Citizen.Wait(1000)
        SendAlert('inform', 'Type: /hitoff to turn off hitindicators', 2500, { ['background-color'] = '#111',  ['color'] = Config.UIColor })
    end)

    RegisterCommand("hitcolor", function(source, args)
        if table.concat(args) == '' then
        SendAlert('inform', 'type: /hithelp for info about hitcolors', 2500, { ['background-color'] = '#111',  ['color'] = Config.UIColor })
        else
        OutColor = colors[table.concat(args)]
        end
    end)

    RegisterCommand("hitsound", function(source, args)
        if table.concat(args) == 'rust' then
            OutHitSound = 'rust'
            OutHeadshotSound = 'rustheadshot'
        elseif table.concat(args) == 'cod' then
            OutHitSound = 'cod'
            OutHeadshotSound = 'codheadshot'
        elseif table.concat(args) == 'fortnite' then
            OutHitSound = 'fortnite'
            OutHeadshotSound = 'fortniteheadshot'
        elseif table.concat(args) == 'skeet' then
            OutHitSound = 'skeet'
            OutHeadshotSound = 'skeet'
        elseif table.concat(args) == 'minecraft' then
            OutHitSound = 'minecraft'
            OutHeadshotSound = 'minecraft'
        elseif table.concat(args) == 'csgo' then
            OutHitSound = 'csgo'
            OutHeadshotSound = 'csgoheadshot'
        
        else
            SendAlert('inform', 'type: /hithelp for info about hitsounds', 2500, { ['background-color'] = '#111',  ['color'] = Config.UIColor })
        end
        end)

    RegisterCommand("hitvolume", function(source, args)
        OutVolume = table.concat(args)
    end)

    

    
Citizen.CreateThread(function()
            informmessage()
            local player = PlayerId()
            local playerPed = PlayerPedId() 
                    AddEventHandler('gameEventTriggered', function (name, args)
                    if hitscript == true then
                        if name == 'CEventNetworkEntityDamage' then
                            if IsEntityAPed(args[1]) and IsEntityAPed(args[2]) then 
                                if args[6] == 1 then 
                                    TriggerEvent('gameEvent:PedDied', args[1], args[2], args[7])
                                elseif args[6] == 0 then 
                                    TriggerEvent('gameEvent:PedHit', args[1], args[2], args[7])
                                end
                            end
                        end
            end
end)
                    
                    AddEventHandler('gameEvent:PedDied', function(victimid, killerid, weaponHash)
                        if killerid == PlayerPedId() then
                            if killerid ~= victimid then
                                if unvalidweapons[weaponHash] then
                                    print("jemoeder")
                                else

                        local _, HeadHit = GetPedLastDamageBone(victimid)
                        if HeadHit == 31086 then
                            if Config.Hitindicators == false then
                                TriggerEvent('TTInteractSound_CL:PlayOnOne', OutHeadshotSound, OutVolume)
                                if Config.KillNotification == true then

                                    local localIdFromPed = NetworkGetPlayerIndexFromPed(victimid)
                                    local serverId = GetPlayerServerId(localIdFromPed)
                                    local spelenaam = GetPlayerName(PlayerId(serverId))
                                    print(serverId)
                                    print(localIdFromPed)
                                    print(spelenaam)
                                SendAlert('inform', 'You killed '..serverId, 2500, { ['background-color'] = '#111',  ['color'] = '#005DFF' })
                                end
                            else
                            SendAlert('error', 'HEADSHOT', 0, {['color'] = OutColor })
                            TriggerEvent('TTInteractSound_CL:PlayOnOne', OutHeadshotSound, OutVolume)
                            if Config.KillNotification == true then

                                local localIdFromPed = NetworkGetPlayerIndexFromPed(victimid)
                                local serverId = GetPlayerServerId(localIdFromPed)
                                local spelenaam = GetPlayerName(PlayerId(serverId))
                                print(serverId)
                                print(localIdFromPed)
                                print(spelenaam)

                            SendAlert('inform', 'You killed '..serverId, 2500, { ['background-color'] = '#111',  ['color'] = '#005DFF' })
                            end
                        end
                        else
                            local weapondamagecalculator = math.random(0, 4)
                            local weapondamage = GetWeaponDamage(GetSelectedPedWeapon(playerPed)) + weapondamagecalculator
                            if Config.Hitindicators == true then      
                            SendAlert('error', weapondamage, 0, {['color'] = OutColor })
                            TriggerEvent('TTInteractSound_CL:PlayOnOne', OutHitSound, OutVolume)
                            if Config.KillNotification == true then
                                local localIdFromPed = NetworkGetPlayerIndexFromPed(victimid)
                                local serverId = GetPlayerServerId(localIdFromPed)
                                local spelenaam = GetPlayerName(PlayerId(serverId))
                                print(weaponHash)
                            SendAlert('inform', 'You killed '..'Vladimir_Debarie', 2500, { ['background-color'] = '#111',  ['color'] = '#005DFF' })
                            end
                            else
                                TriggerEvent('TTInteractSound_CL:PlayOnOne', OutHitSound, OutVolume)
                            if Config.KillNotification == true then
                                local localIdFromPed = NetworkGetPlayerIndexFromPed(victimid)
                                local serverId = GetPlayerServerId(localIdFromPed)
                                local spelenaam = GetPlayerName(PlayerId(serverId))
                                print(serverId)
                                print(localIdFromPed)
                                print(spelenaam)
                            SendAlert('inform', 'You killed '..serverId, 2500, { ['background-color'] = '#111',  ['color'] = '#005DFF' })
                            end
                        end
                    end
                    end
                    end
                    end
                    end)
                    
                    AddEventHandler('gameEvent:PedHit', function(victimid, killerid, weaponHash)
                        if killerid == PlayerPedId() then
                            if killerid ~= victimid then
                                if unvalidweapons[weaponHash] then
                                    print("jemoeder")
                                else


                        local targetPed = GetPlayerPed(victimid)
                        
                        local _, HeadHit = GetPedLastDamageBone(victimid)
                        if HeadHit == 31086 then
                            if Config.Hitindicators == true then
                            SendAlert('error', 'HEADSHOT', 0, {['color'] = OutColor })
                            TriggerEvent('TTInteractSound_CL:PlayOnOne', OutHeadshotSound, OutVolume)
                            else
                                TriggerEvent('TTInteractSound_CL:PlayOnOne', OutHeadshotSound, OutVolume)
                            end
                        else
                            if Config.Hitindicators == true then
                            local weapondamagecalculator = math.random(0, 4)
                            local weapondamage = GetWeaponDamage(GetSelectedPedWeapon(playerPed)) + weapondamagecalculator
                            SendAlert('error', weapondamage, 0, {['color'] = OutColor })
                            TriggerEvent('TTInteractSound_CL:PlayOnOne', OutHitSound, OutVolume)
                            else
                                TriggerEvent('TTInteractSound_CL:PlayOnOne', OutHitSound, OutVolume)
                            end
                        end
                    end
                    end
                end
                    end)

 end)

        

        
    
    
            local NPC = { x = 76.78, y = -851.38, z = 30.82, rotation = 200, NetworkSync = true}
            Citizen.CreateThread(function()
            modelHash = GetHashKey("a_f_m_beach_01")
            RequestModel(modelHash)
            while not HasModelLoaded(modelHash) do
                Wait(1)
            end
            createNPC() 
            end)
            function createNPC()
                created_ped = CreatePed(0, modelHash , NPC.x,NPC.y,NPC.z - 1, NPC.rotation, NPC.NetworkSync)
                FreezeEntityPosition(created_ped, true)
                SetBlockingOfNonTemporaryEvents(created_ped, true)
                TaskStartScenarioInPlace(created_ped, "WORLD_HUMAN_COP_IDLES", 0, true)
            end
    
    
    
            local standardVolumeOutput = 0.3;
            local hasPlayerLoaded = false
            Citizen.CreateThread(function()
                Wait(5000)
                hasPlayerLoaded = true
            end)
    
    
    
            RegisterNetEvent('TTInteractSound_CL:PlayOnOne')
            AddEventHandler('TTInteractSound_CL:PlayOnOne', function(soundFile, soundVolume)
                if hasPlayerLoaded then
                    SendNUIMessage({
                        transactionType = 'playSound',
                        transactionFile  = soundFile,
                        transactionVolume = soundVolume
                    })
                end
            end)
    

RegisterNetEvent('tt_notify:client:SendAlert')
AddEventHandler('tt_notify:client:SendAlert', function(data)
	SendAlert(data.type, data.text, data.length, data.style)
end)

RegisterNetEvent('tt_notify:client:PersistentAlert')
AddEventHandler('tt_notify:client:PersistentAlert', function(data)
	PersistentAlert(data.action, data.id, data.type, data.text, data.style)
end)

function SendAlert(type, text, length, style)
	SendNUIMessage({
		type = type,
		text = text,
		length = length,
		style = style
	})
end

function PersistentAlert(action, id, type, text, style)
	if action:upper() == 'START' then
		SendNUIMessage({
			persist = action,
			id = id,
			type = type,
			text = text,
			style = style
		})
	elseif action:upper() == 'END' then
		SendNUIMessage({
			persist = action,
			id = id
		})
	end
end


local body = {
	scale = 0.3,
	offsetLine = 0.02,
	offsetX = 0.005,
	offsetY = 0.004,
	dict = 'commonmenu',
	sprite = 'gradient_bgd',
	width = 0.14,
	height = 0.012,
	heading = -90.0,
	gap = 0.002,
}

local defaultText = '~r~~h~ERROR : ~h~~s~The text of the notification is nil.'
local defaultType = 'topRight'
local defaultTimeout = 6000

RequestStreamedTextureDict(body.dict)

local function goDown(v, id)
	for i = 1, #v do
		if v[i].draw and i ~= id then
			v[i].y = v[i].y + (body.height + (v[id].lines*2 + 1)*body.offsetLine)/2 + body.gap
		end
	end
end

local function goUp(v, id)
	for i = 1, #v do
		if v[i].draw and i ~= id then
			v[i].y = v[i].y - (body.height + (v[id].lines*2 + 1)*body.offsetLine)/2 - body.gap
		end
	end
end

local function centeredDown(v, id)
	for i = 1, #v do
		if v[i].draw and i ~= id then
			v[i].y = v[i].y - (body.height + (v[id].lines*2 + 1)*body.offsetLine)/4 - body.gap/2
			v[id].y = v[i].y + (body.height + (v[id].lines*2 + 1)*body.offsetLine)/2 + body.gap
		end
	end
end

local function centeredUp(v, id)
	for i = 1, #v do
		if v[i].draw and i ~= id then
			v[i].y = v[i].y + (body.height + (v[id].lines*2 + 1)*body.offsetLine)/4 + body.gap/2
			v[id].y = v[i].y - (body.height + (v[id].lines*2 + 1)*body.offsetLine)/2 - body.gap
		end
	end
end

local function CountLines(v, text)
	BeginTextCommandLineCount("STRING")
    SetTextScale(body.scale, body.scale)
    SetTextWrap(v.x, v.x + body.width - body.offsetX)
	AddTextComponentSubstringPlayerName(text)
	local nbrLines = GetTextScreenLineCount(v.x + body.offsetX, v.y + body.offsetY)
	return nbrLines
end

local function DrawText(v, text)
	SetTextScale(body.scale, body.scale)
    SetTextWrap(v.x, v.x + body.width - body.offsetX)

    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(v.x + body.offsetX, v.y + body.offsetY)
end

local function DrawBackground(v)
	DrawSprite(body.dict, body.sprite, v.x + body.width/2, v.y + (body.height + v.lines*body.offsetLine)/2, body.width, body.height + v.lines*body.offsetLine, body.heading, 255, 255, 255, 255)
end

local positions = {
	['centerRight'] = { x = 0.85, y = 0.5, notif = {}, offset = centeredUp },
	['centerLeft'] = { x = 0.01, y = 0.5, notif = {}, offset = centeredUp },
	['topRight'] = { x = 0.85, y = 0.015, notif = {}, offset = goDown },
	['topLeft'] = { x = 0.01, y = 0.015, notif = {}, offset = goDown },
	['bottomRight'] = { x = 0.85, y = 0.955, notif = {}, offset = goUp },
	['bottomLeft'] = { x = 0.015, y = 0.75, notif = {}, offset = goUp },
}


function SendNotification(options)
	local text = options.text or defaultText
	local type = options.type or defaultType
	local timeout = options.timeout or defaultTimeout

	local p = positions[type]
	local id = #p.notif + 1
	local nbrLines = CountLines(p, text)

	p.notif[id] = {
		x = p.x,
		y = p.y,
		lines = nbrLines, 
		draw = true,
	}

	if id > 1 then
		p.offset(p.notif, id)
	end

	Citizen.CreateThread(function()
		Wait(timeout)
		p.notif[id].draw = false
	end)

	Citizen.CreateThread(function()
		while p.notif[id].draw do
			Wait(0)
			DrawBackground(p.notif[id])
			DrawText(p.notif[id], text)
		end
	end)
end


--[[


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