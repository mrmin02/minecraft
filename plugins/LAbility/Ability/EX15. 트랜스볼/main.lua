local attribute = import("$.attribute.Attribute")

function Init(abilityData)
	plugin.registerEvent(abilityData, "EX015-saveLoc", "PlayerSwapHandItemsEvent", 0)
	plugin.registerEvent(abilityData, "EX015-teleportSelf", "PlayerInteractEvent", 900)
	plugin.registerEvent(abilityData, "EX015-teleportTarget", "EntityDamageEvent", 900)
end

function onEvent(funcTable)
	if funcTable[1] == "EX015-saveLoc" then saveLoc(funcTable[3], funcTable[2], funcTable[4], funcTable[1]) end
	if funcTable[1] == "EX015-teleportSelf" then teleportSelf(funcTable[3], funcTable[2], funcTable[4], funcTable[1]) end
	if funcTable[1] == "EX015-teleportTarget" and funcTable[2]:getEventName() == "EntityDamageByEntityEvent" then teleportTarget(funcTable[3], funcTable[2], funcTable[4], funcTable[1]) end
end

function onTimer(player, ability)
	local targetLoc = player:getVariable("EX015-Location")
	
	if targetLoc ~= nil then
		game.sendActionBarMessage(player:getPlayer(), "§a월드 §6: §b" .. worldInfo(targetLoc:getWorld():getEnvironment()) .. " §aX §6: §b" .. targetLoc:getX() .. " §aY §6: §b" .. targetLoc:getY() .. " §aZ §6: §b" .. targetLoc:getZ())
		local loc = targetLoc:clone():add(0, 1, 0)
		loc:getWorld():spawnParticle(import("$.Particle").REDSTONE, loc, 300, 0.2, 0.2, 0.2, 0.05, newInstance("$.Particle$DustOptions", {import("$.Color").LIME, 1}))
		loc:getWorld():spawnParticle(import("$.Particle").SMOKE_NORMAL, loc, 150, 0.2, 0.2, 0.2, 0.05)
	end
end

function saveLoc(LAPlayer, event, ability, id)
	if event:getOffHandItem() ~= nil then
		if game.isAbilityItem(event:getOffHandItem(), "IRON_INGOT") then
			if game.checkCooldown(LAPlayer, game.getPlayer(event:getPlayer()), ability, id) then
				game.getPlayer(event:getPlayer()):setVariable("EX015-Location", event:getPlayer():getLocation())
				
				game.sendMessage(event:getPlayer(), "§2[§a트랜스볼§2] §a좌표를 저장했습니다.")
				event:getPlayer():getWorld():spawnParticle(import("$.Particle").SMOKE_NORMAL, event:getPlayer():getLocation():add(0,1,0), 150, 0.5, 1, 0.5, 0.1)
				event:getPlayer():getWorld():playSound(event:getPlayer():getLocation(), import("$.Sound").BLOCK_BEACON_ACTIVATE, 0.5, 1)
			end
		end
	end
end

function teleportSelf(LAPlayer, event, ability, id)
	if event:getAction():toString() == "RIGHT_CLICK_AIR" or event:getAction():toString() == "RIGHT_CLICK_BLOCK" then
		if event:getPlayer():getInventory():getItemInMainHand() ~= nil then
			if game.isAbilityItem(event:getPlayer():getInventory():getItemInMainHand(), "IRON_INGOT") then
				if game.checkCooldown(LAPlayer, game.getPlayer(event:getPlayer()), ability, id) then
					game.checkCooldown(LAPlayer, game.getPlayer(event:getPlayer()), ability, "EX015-teleportTarget", false)
					teleport(game.getPlayer(event:getPlayer()), event:getPlayer(), ability)
				end
			end
		end
	end
end

function teleportTarget(LAPlayer, event, ability, id)
	if event:getDamager():getType():toString() == "PLAYER" and event:getEntity():getType():toString() == "PLAYER" then
		local item = event:getDamager():getInventory():getItemInMainHand()
		if game.isAbilityItem(item, "IRON_INGOT") then
			if game.checkCooldown(LAPlayer, game.getPlayer(event:getDamager()), ability, id) then
				game.checkCooldown(LAPlayer, game.getPlayer(event:getDamager()), ability, "EX015-teleportSelf", false)
				teleport(game.getPlayer(event:getDamager()), event:getEntity(), ability)
			end
		end
	end
end

function teleport(player, target, ability)
	local targetLoc = player:getVariable("EX015-Location")
	
	if targetLoc ~= nil then
		target:getWorld():spawnParticle(import("$.Particle").PORTAL, target:getLocation():add(0,1,0), 1000, 0.1, 0.1, 0.1)
		target:getWorld():playSound(target:getLocation(), import("$.Sound").ITEM_CHORUS_FRUIT_TELEPORT, 0.5, 1)
		target:teleport(targetLoc)
		target:getWorld():spawnParticle(import("$.Particle").REVERSE_PORTAL, target:getLocation():add(0,1,0), 1000, 0.1, 0.1, 0.1)
		target:getWorld():playSound(target:getLocation(), import("$.Sound").ITEM_CHORUS_FRUIT_TELEPORT, 0.5, 1)
		game.sendMessage(target, "§2트랜스볼 §a능력의 영향으로 지정된 좌표로 이동합니다.")
	else 
		ability:resetCooldown(EX015-teleportSelf)
		ability:resetCooldown(EX015-teleportTarget)
		game.sendMessage(player:getPlayer(), "§4[§c트랜스볼§4] §c좌표가 저장되어 있지 않습니다.")
	end
end


function worldInfo(info)
	if info:toString() == "NETHER" then return "네더" end
	if info:toString() == "THE_END" then return "엔드" end
	if info:toString() == "NORMAL" then return "일반" end
	if info:toString() == "CUSTOM" then return "???" end
	
end