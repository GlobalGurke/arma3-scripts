### arma3-scripts ### 



content: 
 - player persistence 
   - Saves player states (ACE3-Medical states, gear, position)  when ESC is pressed local to his machine with unique mission hash into arma3 profiles folder
   - Load player states when joining into a mission
  
  - Broken leg function 
    - Adds option to support a player if he has a broken leg 
    - If ace action is used, player can walk normaly as long as other player is near him 
    

usage:
description.ext 

class cfgFunctions {
	#include "functions\cfgfunctions.hpp"
}; 

initPlayerLocal.sqf 

private _ehId = addUserActionEventHandler ["ingamePause", "Activate", {
	call CLIENT_fnc_saveData;
}];
