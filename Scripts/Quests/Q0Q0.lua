--
-- This file is autogenerated by QuestXml2Lua
--
require "quests/Quest" 


local quest = Quest {

   id                 = "Q0Q0";
   log_text           = "[Q0Q0_DESC]";
   icon               = "side";
   quest_type         = "side";
   repeatable         = false;
   can_abandon        = true;
   end_state          = 3;
   start_convo        = "";
   incomplete_convo   = "";
   level_min          = 1;
   level_max          = 999;
   start_message      = "";
   incomplete_message = "";
   start_locations = {S042=true,T114=true};

   preconditions = {
      [1]={
      CONDITIONS.has_friend {friend="C004"},
          };
   };

   objectives = {
      [1]={
              OBJECTIVES.kill_monster {
                 battleground    = "B001";
                 monster         = "HE20";
                 location        = {S076=true,T143=true};
                 text            = "[Q0Q0_1_0_MSG]";
                 action			= "[Q0Q0_1_0_ACTN]";
                 log_text		= "[Q0Q0_1_0_LOG]";
                 next_state      = 2;
              },
           };
      [2]={
              OBJECTIVES.go_to_location {
                 location        = {S042=true,T114=true};
                 action			= "[Q0Q0_2_0_ACTN]";
                 log_text		= "[Q0Q0_2_0_LOG]";
                 next_state      = 3;
              },
          };
   };

   start_actions = {
   };

   end_actions = {
      [3]={
                 ACTIONS.unlock_quest {quest="Q0Q1", show=false},
                 ACTIONS.give_experience {amount=25, show=true},
                 ACTIONS.give_gold {amount=1000, show=true},
                 ACTIONS.give_faction_status {faction="11", amount=10, show=false},
          };
   };

   abandon_actions = {
   };

}

return quest
