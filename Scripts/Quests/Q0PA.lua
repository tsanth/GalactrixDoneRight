--
-- This file is autogenerated by QuestXml2Lua
--
require "quests/Quest" 


local quest = Quest {

   id                 = "Q0PA";
   log_text           = "[Q0PA_DESC]";
   icon               = "character";
   quest_type         = "character";
   repeatable         = false;
   can_abandon        = true;
   end_state          = 3;
   start_convo        = "Conv_Q0PAa";
   incomplete_convo   = "";
   level_min          = 1;
   level_max          = 999;
   start_message      = "";
   incomplete_message = "";
   start_locations = {S075=true,T140=true};

   preconditions = {
   };

   objectives = {
      [1]={
              OBJECTIVES.kill_monster {
                 battleground    = "B001";
                 monster         = "HE33";
                 location        = {S042=true,T114=true};
                 text            = "[Q0PA_1_0_MSG]";
                 action			= "[Q0PA_1_0_ACTN]";
                 log_text		= "[Q0PA_1_0_LOG]";
                 next_state      = 2;
              },
           };
      [2]={
              OBJECTIVES.go_to_location {
                 location        = {S075=true,T140=true};
                 action			= "[Q0PA_2_0_ACTN]";
                 log_text		= "[Q0PA_2_0_LOG]";
                 end_convo       = "Conv_Q0PAb";
                 next_state      = 3;
              },
          };
   };

   start_actions = {
   };

   end_actions = {
      [3]={
                 ACTIONS.give_experience {amount=30, show=true},
                 ACTIONS.give_faction_status {faction="11", amount=-10, show=false},
                 ACTIONS.unlock_quest {quest="Q0Q0", show=false},
          };
   };

   abandon_actions = {
   };

}

return quest
