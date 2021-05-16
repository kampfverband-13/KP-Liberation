if (!isServer) exitWith {};

params [ "_new_fob", "_create_fob_building" ];
private [ "_fob_building", "_fob_pos" ];

GRLIB_all_fobs pushback _new_fob;
publicVariable "GRLIB_all_fobs";

if ( _create_fob_building ) then {
    _fob_pos = [ (_new_fob select 0) + 15, (_new_fob select 1) + 2, 0 ];
    [_fob_pos, 20, true] call KPLIB_fnc_createClearance;
    _fob_building = FOB_typename createVehicle _fob_pos;
    _fob_building setpos _fob_pos;
    _fob_building setVectorUp [0,0,1];
    [_fob_building] call KPLIB_fnc_addObjectInit;
	
	_rulePosGer = _fob_pos modelToWorld [0,3.5,0];
	_rulePosEng = _fob_pos modelToWorld [2,3.5,0];
	
	_rulesGer = createVehicle ["Land_MapBoard_F", _rulePosGer, [], 0, "CAN_COLLIDE"];
	_rulesGer setObjectTextureGlobal [0, "MilSimUnited\rules_ger_1.jpg"];
	_rulesGer enableSimulationGlobal false;
	_rulesEng = createVehicle ["Land_MapBoard_F", _rulePosEng, [], 0, "CAN_COLLIDE"];
	_rulesEng setObjectTextureGlobal [0, "MilSimUnited\rules_en_1.jpg"];
	_rulesEng enableSimulationGlobal false;
	
    sleep 1;
};

[] spawn KPLIB_fnc_doSave;

sleep 3;
[_new_fob, 0] remoteExec ["remote_call_fob"];

stats_fobs_built = stats_fobs_built + 1;

FOB_build_in_progress = false;
publicVariable "FOB_build_in_progress";
