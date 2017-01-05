--
-- This file is autogenerated by QuestXml2Lua
--
require "quests/Quest" 


local quest = Quest {

   id                 = "Q0F2";
   log_text           = "[Q0F2_DESC]";
   icon               = "side";
   quest_type         = "side";
   repeatable         = true;
   can_abandon        = true;
   end_state          = 5;
   start_convo        = "";
   incomplete_convo   = "";
   level_min          = 1;
   level_max          = 999;
   start_message      = "";
   incomplete_message = "";
   start_locations = {S030=true,T166=true};

   preconditions = {
   };

   objectives = {
      [1]={
              OBJECTIVES.go_to_location {
                 location        = {S036=true,T187=true};
                 action			= "[Q0F2_1_0_ACTN]";
                 log_text		= "[Q0F2_1_0_LOG]";
                 end_text        = "[Q0F2_1_0_ENDMSG]";
                 next_state      = 2;
              },
           };
      [2]={
              OBJECTIVES.go_to_location {
                 location        = {S065=true,T203=true};
                 action			= "[Q0F2_2_0_ACTN]";
                 log_text		= "[Q0F2_2_0_LOG]";
                 end_text        = "[Q0F2_2_0_ENDMSG]";
                 next_state      = 3;
              },
           };
      [3]={
              OBJECTIVES.go_to_location {
                 location        = {S067=true,T247=true};
                 action			= "[Q0F2_3_0_ACTN]";
                 log_text		= "[Q0F2_3_0_LOG]";
                 end_text        = "[Q0F2_3_0_ENDMSG]";
                 next_state      = 4;
              },
           };
      [4]={
              OBJECTIVES.go_to_location {
                 location        = {S030=true,T166=true};
                 action			= "[Q0F2_4_0_ACTN]";
                 log_text		= "[Q0F2_4_0_LOG]";
                 next_state      = 5;
              },
          };
   };

   start_actions = {
   };

   end_actions = {
      [5]={
                 ACTIONS.give_gold {amount=1000, show=true},
                 ACTIONS.give_experience {amount=25, show=true},
                 ACTIONS.unlock_quest {quest="Q0F3", show=false},
                 ACTIONS.give_faction_status {faction="3", amount=5, show=false},
          };
   };

   abandon_actions = {
   };

}

return quest
