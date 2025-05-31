// Load Player Specific Data 
_loadout = missionProfileNameSpace getVariable "Loadout"; 
_health = missionProfileNameSpace getVariable "AceHealth"; 
_position = missionProfileNameSpace getVariable "LastPosition"; 

if (isNil "_loadout" || {isNil "_health"} || {isNil "_position"} || {!(_position isEqualType [])}) exitWith { 
    false
}; 

player setPosASL _position; 
player setUnitLoadout _loadout; 
[player, _health] call ace_medical_fnc_deserializeState; 
hint "Deine Spielerdaten wurden geladen."; 