--
-- This file is autogenerated by QuestXml2Lua
--
require "quests/Quest" 


local quest = Quest {

   id                 = "Q0SG";
   log_text           = "[Q0SG_DESC]";
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
   start_locations = {S047=true,T269=true};

   preconditions = {
   };

   objectives = {
      [1]={
              OBJECTIVES.go_to_location {
                 location        = {S061=true,T306=true};
                 action			= "[Q0SG_1_0_ACTN]";
                 log_text		= "[Q0SG_1_0_LOG]";
                 end_text        = "[Q0SG_1_0_ENDMSG]";
                 next_state      = 2;
              },
           };
      [2]={
              OBJECTIVES.go_to_location {
                 location        = {S061=true,T306=true};
                 action			= "[Q0SG_2_0_ACTN]";
                 log_text		= "[Q0SG_2_0_LOG]";
                 end_text        = "[Q0SG_2_0_ENDMSG]";
                 end_convo       = "Conv_Q0SGa";
                 next_state      = 3;
              },
          };
   };

   start_actions = {
   };

   end_actions = {
      [3]={
                 ACTIONS.give_resource {resource="11", amount=6, show=false},
                 ACTIONS.unlock_quest {quest="Q0SH", show=false},
                 ACTIONS.give_experience {amount=100, show=true},
          };
   };

   abandon_actions = {
   };

}

return quest
