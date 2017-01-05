--
-- This file is autogenerated by QuestXml2Lua
--
require "quests/Quest" 


local quest = Quest {

   id                 = "Q0SD";
   log_text           = "[Q0SD_DESC]";
   icon               = "character";
   quest_type         = "character";
   repeatable         = false;
   can_abandon        = true;
   end_state          = 3;
   start_convo        = "";
   incomplete_convo   = "";
   level_min          = 1;
   level_max          = 999;
   start_message      = "";
   incomplete_message = "";
   start_locations = {S032=true,T174=true};

   preconditions = {
   };

   objectives = {
      [1]={
              OBJECTIVES.go_to_location {
                 location        = {S040=true,T210=true};
                 action			= "[Q0SD_1_0_ACTN]";
                 log_text		= "[Q0SD_1_0_LOG]";
                 end_text        = "[Q0SD_1_0_ENDMSG]";
                 next_state      = 2;
              },
           };
      [2]={
              OBJECTIVES.go_to_location {
                 location        = {S040=true,T210=true};
                 action			= "[Q0SD_2_0_ACTN]";
                 log_text		= "[Q0SD_2_0_LOG]";
                 end_text        = "[Q0SD_2_0_ENDMSG]";
                 end_convo       = "Conv_Q0SDa";
                 next_state      = 3;
              },
          };
   };

   start_actions = {
   };

   end_actions = {
      [3]={
                 ACTIONS.unlock_quest {quest="Q0SE", show=false},
                 ACTIONS.give_experience {amount=100, show=true},
                 ACTIONS.give_resource {resource="11", amount=3, show=false},
          };
   };

   abandon_actions = {
   };

}

return quest
