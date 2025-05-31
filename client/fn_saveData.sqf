// Saves Player Data into his Profile namespace 

_position = getPosASL player; 
_loadout = getUnitLoadout player; 
_heading = direction player; 
_health = [player] call ace_medical_fnc_serializeState;
if (isNil "_loadout" || {isNil "_health"} || {isNil "_position"} || {!(_position isEqualType [])}) exitWith { 
    systemChat "Some thing went wrong."; 
    false
}; 
missionProfileNamespace setVariable["LastPosition", _position]; 
missionProfileNamespace setVariable["Loadout", _loadout]; 
missionProfileNamespace setVariable["AceHealth", _health]; 
missionProfileNamespace setVariable["Heading", _heading]; 

saveMissionProfileNamespace; 