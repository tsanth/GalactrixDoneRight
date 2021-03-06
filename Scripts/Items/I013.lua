-- I013
-- Repair Bot - Repairs +5 damage, +1 extra per 8 points of Green Energy.

local function activate(item, world, player, obj,weapon,engine,cpu)
	local amt = 5 + math.floor(cpu /8)
	item:AwardEnergy(world, player, "life", amt)
end

local function should_ai_use_item(item, world, player)

	local weight = 0
	if player:GetAttribute("life") == player:GetAttribute("life_max") then
		weight = 0
	else
		weight = math.floor(95 * (1-(player:GetAttribute("life") / player:GetAttribute("life_max"))))
	end


	local cpu_need = 0
	local ship = player:GetAttribute("curr_ship")


	if ship:NumAttributes("battle_items") >= 1 then
		for i=1,ship:NumAttributes("battle_items") do
			cpu_need = cpu_need + ship:GetAttributeAt("battle_items", i):GetAttribute("cpu_requirement")
		end
	end

	if cpu_need >= 12 then
		weight = weight - 10
	end

	if cpu_need >= 20 then
		weight = weight - 15
	end

	return weight

end
return {  psi_requirement = 0;


	icon = "img_IUP1";
	weapon_requirement = 0;
	engine_requirement = 1;
	cpu_requirement = 7;
	recharge = 3;
	rarity = 3;
	cost = 550;

	end_turn = 1;  passive = 0;
	user_input = 0;
	status_on_enemy = 0;
	activation_sound = "snd_repair";
	recharged_sound = "snd_recharge";

	Activate = activate;
	ShouldAIUseItem = should_ai_use_item;
}
