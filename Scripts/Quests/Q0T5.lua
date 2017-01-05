--
-- This file is autogenerated by QuestXml2Lua
--
require "quests/Quest" 


local quest = Quest {

   id                 = "Q0T5";
   log_text           = "[Q0T5_DESC]";
   icon               = "side";
   quest_type         = "side";
   repeatable         = false;
   can_abandon        = true;
   end_state          = 4;
   start_convo        = "";
   incomplete_convo   = "";
   level_min          = 1;
   level_max          = 999;
   start_message      = "";
   incomplete_message = "";
   start_locations = {S022=true,T000=true};

   preconditions = {
   };

   objectives = {
      [1]={
              OBJECTIVES.go_to_location {
                 location        = {S060=true,T259=true};
                 text            = "[Q0T5_1_0_MSG]";
                 action			= "[Q0T5_1_0_ACTN]";
                 log_text		= "[Q0T5_1_0_LOG]";
                 next_state      = 2;
              },
           };
      [2]={
              OBJECTIVES.kill_monster {
                 battleground    = "B001";
                 monster         = "HE38";
                 location        = {S060=true,T261=true};
                 action			= "[Q0T5_2_0_ACTN]";
                 log_text		= "[Q0T5_2_0_LOG]";
                 end_text        = "[Q0T5_2_0_ENDMSG]";
                 next_state      = 3;
              },
           };
      [3]={
              OBJECTIVES.go_to_location {
                 location        = {S022=true,T000=true};
                 action			= "[Q0T5_3_0_ACTN]";
                 log_text		= "[Q0T5_3_0_LOG]";
                 next_state      = 4;
              },
          };
   };

   start_actions = {
   };

   end_actions = {
      [4]={
                 ACTIONS.give_gold {amount=5000, show=true},
                 ACTIONS.give_experience {amount=50, show=true},
          };
   };

   abandon_actions = {
   };

}

return quest