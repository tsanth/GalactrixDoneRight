-- I330
-- Reinforced Armor - Increases maximum Hull by 20.

local function activate(item, world, player, obj,weapon,engine,cpu)

end

local function should_ai_use_item(item, world, player)

end

return {  psi_requirement = 0;


	icon = "img_ICB5";
	weapon_requirement = 4;
	engine_requirement = 5;
	cpu_requirement = 4;
	recharge = 99;
	rarity = 2;
	cost = 6000;

	end_turn = 1;
	passive = 1;
	user_input = 0;
	status_on_enemy = 0;
	activation_sound = "snd_capacitor";
	recharged_sound = "snd_recharge";

	Activate = activate;
	ShouldAIUseItem = should_ai_use_item;
}
