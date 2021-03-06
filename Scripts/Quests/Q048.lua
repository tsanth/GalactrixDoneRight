--
-- This file is autogenerated by QuestXml2Lua
--
require "quests/Quest" 


local quest = Quest {

   id                 = "Q048";
   log_text           = "[Q048_DESC]";
   icon               = "main";
   quest_type         = "main";
   repeatable         = false;
   can_abandon        = false;
   end_state          = 2;
   start_convo        = "Conv_Q048a";
   incomplete_convo   = "";
   level_min          = 1;
   level_max          = 999;
   start_message      = "";
   incomplete_message = "";
   start_locations = {S058=true,T290=true};

   preconditions = {
   };

   objectives = {
      [1]={
              OBJECTIVES.kill_monster {
                 battleground    = "B001";
                 monster         = "HE30";
                 location        = {S058=true,T290=true};
				 log_text		= "[Q048_1_0_LOG]";				 
                 action			= "[Q048_1_0_ACTN]";
                 end_convo       = "Conv_Q048b";
                 next_state      = 2;
              },
          };
   };

   start_actions = {
   };

   end_actions = {
      [2]={
                 ACTIONS.give_experience {amount=200, show=true},
                 ACTIONS.unlock_quest {quest="Q049", show=false},
                 ACTIONS.show_cutscene {cutscene="CS10"},
          };
   };

   abandon_actions = {
   };

}

return quest
