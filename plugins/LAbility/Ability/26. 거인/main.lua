local attribute = import("$.attribute.Attribute")

function Init(abilityData) end

function onTimer(player, ability)
	if player:getVariable("MW026-isEnable") ~= true then 
		player:setVariable("MW026-isEnable", true) 
		player:getPlayer():getAttribute(attribute.GENERIC_MAX_HEALTH):setBaseValue(player:getPlayer():getAttribute(attribute.GENERIC_MAX_HEALTH):getDefaultValue() * 2)
	end
end

function Reset(player, ability)
	player:getPlayer():getAttribute(attribute.GENERIC_MAX_HEALTH):setBaseValue(player:getPlayer():getAttribute(attribute.GENERIC_MAX_HEALTH):getDefaultValue())
end