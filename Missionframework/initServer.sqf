hs_MPhint = { hint _this };
/* USE:
_hs_hint = format['_crate: %1', typeOf _crate];
[_hs_hint, 'hs_MPhint'] call BIS_fnc_mp;
*/

[]execVM "MilSimUnited\lose_ressources.sqf";
[]execVM "MilSimUnited\gain_ressources.sqf";

KP_liberation_supplies_global = 1;
KP_liberation_ammo_global = 1;
KP_liberation_fuel_global = 1;

addMissionEventHandler ['EntityKilled',{
	_unit = _this select 0;
	if (isPlayer _unit) then {
		_hs_unconscious = _unit getVariable ['ACE_isUnconscious', false];
		if (_hs_unconscious == true) then { _unit spawn lose_resources; };
	}; 
}];

addMissionEventHandler ['HandleDisconnect',{
	_unit = _this select 0;
	_hs_unconscious = _unit getVariable ['ACE_isUnconscious', false];
	if (_hs_unconscious == true) then { _unit spawn lose_resources; };
}];


[]execVM "MilSimUnited\hs_spawn.sqf";


activeRoadblock = [];
sleep 15;
//RESTORE RULEBORD TEXTURE ON FOBs
{
	_list = [_x select 0,_x select 1] nearObjects ["Land_MapBoard_F", 15];
	_rulesGer = _list select 0;
	_rulesGer setObjectTextureGlobal [0, "MilSimUnited\rules_ger_1.jpg"];
	_rulesGer enableSimulationGlobal false;
	_rulesEng = _list select 1;
	_rulesEng setObjectTextureGlobal [0, "MilSimUnited\rules_en_1.jpg"];
	_rulesEng enableSimulationGlobal false;		
	_dirLamps = (getDir _rulesGer) - 90;
	_lampPosGer = _rulesGer modelToWorld [0,-0.15,0.95];
	_lampGer = createVehicle ["Land_TentLamp_01_suspended_F", _lampPosGer, [], 0, "CAN_COLLIDE"];
	_lampGer setDir _dirLamps;
	_lampGer allowDamage false;
	_lampPosEng = _rulesEng modelToWorld [0,-0.15,0.95];
	_lampEng = createVehicle ["Land_TentLamp_01_suspended_F", _lampPosEng, [], 0, "CAN_COLLIDE"];
	_lampEng setDir _dirLamps;
	_lampEng allowDamage false;
} foreach GRLIB_all_fobs;

sleep 300;
if (isServer) then {
	while {true} do {
		[]execVM "MilSimUnited\roadblocks.sqf";
		[]execVM "MilSimUnited\ieds.sqf";
		[] spawn hs_spawn;
		sleep 600;
	};
};