--
-- This file is autogenerated by QuestXml2Lua
--
require "quests/Quest" 


local quest = Quest {

   id                 = "Q025";
   log_text           = "[Q025_DESC]";
   icon               = "main";
   quest_type         = "main";
   repeatable         = false;
   can_abandon        = false;
   end_state          = 4;
   start_convo        = "Conv_Q025a";
   incomplete_convo   = "";
   level_min          = 1;
   level_max          = 999;
   start_message      = "";
   incomplete_message = "";
   start_locations = {S019=true,T128=true};

   preconditions = {
   };

   objectives = {
      [1]={
              OBJECTIVES.go_to_location_event {
                 location        = {S072=true,T148=true};
                 log_text		= "[Q025_1_0_LOG]";
                 end_convo       = "Conv_Q025b";
                 next_state      = 2;
              },
           };
      [2]={
              OBJECTIVES.kill_monster {
                 battleground    = "B001";
                 monster         = "HE27";
                 location        = {S072=true,T148=true};
                 text            = "[Q025_2_0_MSG]";
                 action			= "[Q025_2_0_ACTN]";
                 log_text		= "[Q025_2_0_LOG]";
                 end_convo       = "Conv_Q025c";
                 next_state      = 3;
              },
           };
      [3]={
              OBJECTIVES.go_to_location {
                 location        = {S072=true,T148=true};
                 action			= "[Q025_3_0_ACTN]";
                 log_text		= "[Q025_3_0_LOG]";
                 end_convo       = "Conv_Q025d";
                 next_state      = 4;
              },
          };
   };

   start_actions = {
   };

   end_actions = {
      [4]={
                 ACTIONS.give_experience {amount=75, show=true},
                 ACTIONS.unlock_quest {quest="Q026", show=false},
          };
   };

   abandon_actions = {
   };

}

return quest
