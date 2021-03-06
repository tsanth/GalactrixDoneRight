--
-- This file is autogenerated by QuestXml2Lua
--
require "quests/Quest" 


local quest = Quest {

   id                 = "Q0LD";
   log_text           = "[Q0LD_DESC]";
   icon               = "character";
   quest_type         = "character";
   repeatable         = false;
   can_abandon        = false;
   end_state          = 3;
   start_convo        = "Conv_Q0LDa";
   incomplete_convo   = "";
   level_min          = 1;
   level_max          = 999;
   start_message      = "";
   incomplete_message = "";
   start_locations = {S059=true,T263=true};

   preconditions = {
      [2]={
      CONDITIONS.min_gold {amount=2000, text="[Q0LD_2_0_PRE]"},
          };
   };

   objectives = {
      [1]={
              OBJECTIVES.go_to_location {
                 location        = {S069=true,T244=true};
                 action			= "[Q0LD_1_0_ACTN]";
                 log_text		= "[Q0LD_1_0_LOG]";
                 end_text        = "[Q0LD_1_0_ENDMSG]";
                 next_state      = 2;
              },
           };
      [2]={
              OBJECTIVES.go_to_location {
                 location        = {S059=true,T263=true};
                 action			= "[Q0LD_2_0_ACTN]";
                 log_text		= "[Q0LD_2_0_LOG]";
                 end_convo       = "Conv_Q0LDb";
                 next_state      = 3;
              },
          };
   };

   start_actions = {
   };

   end_actions = {
      [2]={
                 ACTIONS.give_gold {amount=-2000, show=false},
           };
      [3]={
                 ACTIONS.unlock_quest {quest="Q0LE", show=false},
                 ACTIONS.give_experience {amount=50, show=true},
          };
   };

   abandon_actions = {
   };

}

return quest
