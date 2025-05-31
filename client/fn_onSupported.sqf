/* 
Player is beeing supported, remove is splint as long as other player is near him. 
*/
params["_supportingPlayer", "_targetPlayer"];

// Check if player is able to support 
//systemChat format["Target P: %1", _targetPlayer]; 
_supportActive = _targetPlayer getVariable "SupportActive"; 
if (isNil "_supportActive") then {
	_supportActive = false; 
};
if(_supportActive) exitWith {hint "Spieler wird schon gestützt.";}; 
_targetPlayer setVariable["SupportActive", true, true]; 


_json = [_targetPlayer] call ace_medical_fnc_serializeState; 
_medicalArray = [_json] call CBA_fnc_parseJSON; 
_fractures = _medicalArray getVariable "ace_medical_fractures"; 
if (_fractures select 4 == 1 || _fractures select 5 == 1) exitWith { hint "Spieler hat noch offene Frakturen. Benutze eine Schiene. (Splint)"; false};

_actualFractures = +_fractures; 
_fractures set [4, 0]; 
_fractures set [5, 0]; 
_medicalArray setVariable ["ace_medical_fractures", _fractures]; 


_updatedJson = [_medicalArray] call CBA_fnc_encodeJSON; 
//[_targetPlayer, _updatedJson] call ace_medical_fnc_deserializeState; 
[_targetPlayer, _updatedJson] remoteExec ["ace_medical_fnc_deserializeState", 0]; 
//systemChat "Setting Supporting State!";


[_actualFractures, _supportingPlayer, _targetPlayer] spawn { 
	params["_actualFractures", "_supportingPlayer", "_targetPlayer"]; 
	_isSupporting = true; 
	while {_isSupporting} do {
		_dst = _supportingPlayer distance _targetPlayer; 
		hint "Stütze Aktiv. Bleibe in der Nähe"; 
		["Du wirst gestützt."] remoteExec ["hint", owner _targetPlayer]; 
		sleep 1; 
		if (_dst > 2.3) then {
			// Stop supporting, 
			_isSupporting = false; 
			//systemChat "Stopping Support!"; 
			// Get Players current medical state, and add broken but splinted legs again 
			_currentJson = [_targetPlayer] call ace_medical_fnc_serializeState; 
			_currentMedicalArray = [_currentJson] call CBA_fnc_parseJSON; 
			_currentFractures = _currentMedicalArray getVariable "ace_medical_fractures"; 
			if ((_actualFractures select 4) == -1) then {
				_currentFractures set [4, -1];  
			}; 
			if ((_actualFractures select 5) == -1) then {
				_currentFractures set [5, -1]; 
			};
			_currentMedicalArray setVariable ["ace_medical_fractures", _currentFractures]; 
			_currentUpdatedJson = [_currentMedicalArray] call CBA_fnc_encodeJSON; 
			//[_targetPlayer, _currentUpdatedJson] call ace_medical_fnc_deserializeState; 

			[_targetPlayer, _currentUpdatedJson] remoteExec ["ace_medical_fnc_deserializeState", 0]; 			
			hintSilent ""; 
			hint "Stützen gestoppt";
			_targetPlayer setVariable["SupportActive", false, true]; 
		};
	};
}; 