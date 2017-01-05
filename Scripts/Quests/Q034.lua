--
-- This file is autogenerated by QuestXml2Lua
--
require "quests/Quest" 


local quest = Quest {

   id                 = "Q034";
   log_text           = "[Q034_DESC]";
   icon               = "main";
   quest_type         = "main";
   repeatable         = false;
   can_abandon        = false;
   end_state          = 5;
   start_convo        = "Conv_Q034a";
   incomplete_convo   = "";
   level_min          = 1;
   level_max          = 999;
   start_message      = "";
   incomplete_message = "";
   start_locations = {S026=true,T095=true};

   preconditions = {
   };

   objectives = {
      [1]={
              OBJECTIVES.go_to_location_event {
                 location        = {S038=true,T194=true};
                 log_text		= "[Q034_1_0_LOG]";
                 end_convo       = "Conv_Q034b";
                 next_state      = 2;
              },
           };
      [2]={
              OBJECTIVES.kill_monster {
                 battleground    = "B001";
                 monster         = "HE26";
                 location        = {S038=true,T194=true};
                 action			= "[Q034_2_0_ACTN]";
                 log_text		= "[Q034_2_0_LOG]";
                 next_state      = 3;
              },
           };
      [3]={
              OBJECTIVES.kill_monster {
                 battleground    = "B001";
                 monster         = "HE26";
                 location        = {S038=true,T194=true};
                 action			= "[Q034_3_0_ACTN]";
                 log_text		= "[Q034_3_0_LOG]";
                 next_state      = 4;
              },
           };
      [4]={
              OBJECTIVES.go_to_location {
                 location        = {S038=true,T194=true};
                 action			= "[Q034_4_0_ACTN]";
                 log_text		= "[Q034_4_0_LOG]";
                 end_convo       = "Conv_Q034c";
                 next_state      = 5;
              },
          };
   };

   start_actions = {
   };

   end_actions = {
      [5]={
                 ACTIONS.unlock_quest {quest="Q035", show=false},
                 ACTIONS.give_experience {amount=80, show=true},
                 ACTIONS.unlock_quest {quest="Q0V0", show=false},
                 ACTIONS.give_faction_status {faction="5", amount=-25, show=false},
          };
   };

   abandon_actions = {
   };

}

return quest
