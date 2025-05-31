/*
	Author: GlobalGurke

	Description:
		Lets Player help another player when he has a borken leg, so he can walk normaly

	Parameter(s):
			<object> - _target, player target 
	Returns:
		nothing  

	Examples:
		[_target] spawn CLIENT_fnc_supportPlayerHandler; 
*/

params ["_target"]; 
private _isSupporting = false; 
private _json = [_target] call ace_medical_fnc_serializeState;
private _currentFractureData = nil;

systemChat format ["IS SUPPORT: %1", _isSupporting];

// Check if already supporting
if (_isSupporting) then {
    // Stop supporting
    systemChat "YES"; 
    _isSupporting = false; 
    private _fractures = _medData select "ace_medical_fractures";
    _fractures set [4, _currentFractureData select 4];
    _fractures set [5, _currentFractureData select 5];
    _medData setVariable ["ace_medical_fractures", _fractures];
    _json = [_medData] call CBA_fnc_encodeJSON;
    [_target, _json] remoteExec ["ace_medical_fnc_deserializeState", 0]; 
   //[_target, _json] remoteExec ["SERVER_fnc_deserializeState", 2];

} else {
    // Start supporting
    _isSupporting = true; 
    hint "Beginne stützen des Spielers, bleibe in der nähe!"; 
    _medDataApply = [_json] call CBA_fnc_parseJSON;
    _medDataSave = [_json] call CBA_fnc_parseJSON;

    _currentFractureData = _medDataSave getVariable "ace_medical_fractures"; 

    _fractures = _medDataApply getVariable "ace_medical_fractures";
    _fractures set [4, 0];
    _fractures set [5, 0];
    _medDataApply setVariable ["ace_medical_fractures", _fractures];
    _json = [_medDataApply] call CBA_fnc_encodeJSON;
    [_target, _json] remoteExec ["ace_medical_fnc_deserializeState", 0]; 
    // [_target, _json] remoteExec ["SERVER_fnc_deserializeState", 2];
};

while {_isSupporting} do {
    // Prevent Speeding / add damage when sprinting 
    private _dst = player distance _target; 
    systemChat format ["DIST: %1, %2", _dst, _isSupporting];
    if (_dst > 2.5) then {
        _isSupporting = false;  
        hint "Du bist zu weit entfernt, um Spieler zu stützen."; 
        _json = [_target] call ace_medical_fnc_serializeState;
        _medData = [_json] call CBA_fnc_parseJSON;     
		_fractures = _medData getVariable "ace_medical_fractures"; 
		_fractures set [4, _currentFractureData select 4];
		_fractures set [5, _currentFractureData select 5]; 
		_medData setVariable ["ace_medical_fractures", _fractures];
		_fractures2 = _medData getVariable "ace_medical_fractures"; 
    	systemChat format ["Fractures: %1", _fractures2];
        private _json2 = [_medData] call CBA_fnc_encodeJSON;
        [_target, _json2] remoteExec ["ace_medical_fnc_deserializeState", 0]; 
        //[_target, _json2] remoteExec ["SERVER_fnc_deserializeState", 2];

       
    } else {
        systemChat format["SPEED: %1", (speed _target)];
        if ((speed _target) > 18.0) then {
            _leftLeg = _currentFractureData select 4; 
            _rightLeg = _currentFractureData select 5; 
            systemChat format["TOO FAST: %1, %2", _leftLeg, _rightLeg];
            if (_leftLeg == 1) then {
                systemChat "DAMAGE LEFT"; 
                [_target, 0.3, "leftleg", "stab"] remoteExec ["ace_medical_fnc_addDamageToUnit", 0];
            } else {
                if (_rightLeg == 1) then {
                    systemChat "DAMAGE RIGHT"; 
                     [_target, 0.3, "rightleg", "stab"] remoteExec ["ace_medical_fnc_addDamageToUnit", 0];
                };
            };
        }; 
    }; 
    sleep 1.0; // Yield execution back to the engine
};
