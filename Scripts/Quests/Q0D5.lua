--
-- This file is autogenerated by QuestXml2Lua
--
require "quests/Quest" 


local quest = Quest {

   id                 = "Q0D5";
   log_text           = "[Q0D5_DESC]";
   icon               = "side";
   quest_type         = "side";
   repeatable         = true;
   can_abandon        = true;
   end_state          = 5;
   start_convo        = "";
   incomplete_convo   = "";
   level_min          = 1;
   level_max          = 999;
   start_message      = "[Q0D5_STARTMSG]";
   incomplete_message = "";
   start_locations = {S012=true,T061=true};

   preconditions = {
   };

   objectives = {
      [1]={
              OBJECTIVES.go_to_location {
                 location        = {S004=true,T041=true};
                 action			= "[Q0D5_1_0_ACTN]";
                 log_text		= "[Q0D5_1_0_LOG]";
                 end_text        = "[Q0D5_1_0_ENDMSG]";
                 next_state      = 2;
              },
           };
      [2]={
              OBJECTIVES.go_to_location {
                 location        = {S025=true,T093=true};
                 action			= "[Q0D5_2_0_ACTN]";
                 log_text		= "[Q0D5_2_0_LOG]";
                 end_text        = "[Q0D5_2_0_ENDMSG]";
                 next_state      = 3;
              },
           };
      [3]={
              OBJECTIVES.go_to_location {
                 location        = {S068=true,T241=true};
                 action			= "[Q0D5_3_0_ACTN]";
                 log_text		= "[Q0D5_3_0_LOG]";
                 end_text        = "[Q0D5_3_0_ENDMSG]";
                 next_state      = 4;
              },
           };
      [4]={
              OBJECTIVES.go_to_location {
                 location        = {S012=true,T061=true};
                 action			= "[Q0D5_4_0_ACTN]";
                 log_text		= "[Q0D5_4_0_LOG]";
                 next_state      = 5;
              },
          };
   };

   start_actions = {
   };

   end_actions = {
      [5]={
                 ACTIONS.give_experience {amount=20, show=true},
                 ACTIONS.give_faction_status {faction="8", amount=4, show=false},
                 ACTIONS.give_gold {amount=950, show=true},
          };
   };

   abandon_actions = {
   };

}

return quest
