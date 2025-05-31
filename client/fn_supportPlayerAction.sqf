/*
	Author: GlobalGurke

	Description:
		Lets Player help another player when he has a borken leg, so he can walk normaly
        Executed local  
	Parameter(s):
			<object> - Unit object
	Returns:
		nothing   

	Examples:
		[_unit] spawn CLIENT_fnc_supportPlayerAction; 
*/
params["_unit"]; 
_isSupporting = false; 
_condition = {
    params ["_target", "_player", "_params"];
    _json = [_target] call ace_medical_fnc_serializeState;
    _data = [_json] call CBA_fnc_parseJSON; 
    _fractures = _data getVariable "ace_medical_fractures"; 
    systemChat format["FRACTURES: %1" , _fractures];
    _hasFractures = false; 
    if ((_fractures select 4) == 1 || (_fractures select 4) == -1 || (_fractures select 5) == 1 || (_fractures select 5) == -1) then {
    // if player has fractures, enable option
    _hasFractures = true;
    };
    _hasFractures
};
_statement = {
    params ["_target", "_player", "_params"];
    [_target] spawn CLIENT_fnc_supportPlayerHandler; 
    _isSupporting = true; 
};

_action = ["supportPlayer","Person stützen","",_statement,_condition ] call ace_interact_menu_fnc_createAction;
if (_unit != player) then {
[_unit, 0, ["ACE_MainActions", "supportPlayer"]] call ace_interact_menu_fnc_removeActionFromObject;
[_unit,0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
};
