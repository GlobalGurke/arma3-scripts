/*
Handler for Supporting players, that have broken legs 


*/
params["_menuType"]; 

private _nearestPlayers = player nearEntities ["Man", 2]; 
{
	if (_x == player) then {continue}; 
	//systemChat format["Player: %1", _x]; 
	_json = [_x] call ace_medical_fnc_serializeState; 
	
	_medicalArray = [_json] call CBA_fnc_parseJSON; 
	//systemChat format["Medical Array: %1", _medicalArray ]; 
	_fractures = _medicalArray getVariable "ace_medical_fractures"; 
	//hint format["Fractures: %1", _fractures]; 
	_leg1 = _fractures select 4; 
	_leg2 = _fractures select 5; 
	if (_leg1 != 0 || _leg2 != 0) then {
		// One Leg is at least splinted ==> Enable Support Player Action 
		_actionActive = _x getVariable "SupportActionActive"; 
		if (isNil "_actionActive") then {
			_actionActive = false; 
		}; 
		if (!_actionActive) then { 
			//systemChat format["Player that is being supported: %1", _x]; 
		_supportPlayerAction = ["SupportPlayer", "Stütze Spieler", "", {[player, _target] call CLIENT_fnc_onSupported; }, {true}, {}, [], [0, 0, 0], 5] call ace_interact_menu_fnc_createAction;
		
		[_x, 0, ["ACE_MainActions"], _supportPlayerAction] call ace_interact_menu_fnc_addActionToObject;
		// Mark Object as Support Action Created 
		_x setVariable["SupportActionActive", true, true]; 
		} else {
		}; 
	} else {
		// Both legs are not broken => If action added, remove it 
		_x setVariable ["SupportActionActive", false, true];
		[_x ,0,["ACE_MainActions","SupportPlayer"]] call ace_interact_menu_fnc_removeActionFromObject;

	}; 

} forEach _nearestPlayers; 


// _dst = player distance testAi; 
// if (_dst < 2) then {
// 	_json = [testAi] call ace_medical_fnc_serializeState; 
// 	_medicalArray = [_json] call CBA_fnc_parseJSON; 
// 	//systemChat format["Medical Array: %1", _medicalArray ]; 
// 	_fractures = _medicalArray getVariable "ace_medical_fractures"; 
// 	//hint format["Fractures: %1", _fractures]; 
// 	_leg1 = _fractures select 4; 
// 	_leg2 = _fractures select 5; 
// 	if (_leg1 != 0 || _leg2 != 0) then {
// 		// One Leg is at least splinted ==> Enable Support Player Action 
// 		_actionActive = testAi getVariable "SupportActionActive"; 
// 		if (isNil "_actionActive") then {
// 			_actionActive = false; 
// 		}; 
// 		if (!_actionActive) then { 
// 		_supportPlayerAction = ["SupportPlayer", "Stütze Spieler", "", {[player, testAi] call CLIENT_fnc_onSupported; }, {true}, {}, [], [0, 0, 0], 5] call ace_interact_menu_fnc_createAction;

// 		[testAi, 0, ["ACE_MainActions"], _supportPlayerAction] call ace_interact_menu_fnc_addActionToObject;
// 		// Mark Object as Support Action Created 
// 		testAi setVariable["SupportActionActive", true, true]; 
// 		} else {

// 		}; 
// 	} else {
// 		// Both legs are not broken => If action added, remove it 
// 		testAi setVariable ["SupportActionActive", false, true];
// 		[testAi,0,["ACE_MainActions","SupportPlayer"]] call ace_interact_menu_fnc_removeActionFromObject;

// 	}; 
// }; 




