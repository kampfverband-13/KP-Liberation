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
	_lampGer enableSimulationGlobal false;
	_lampPosEng = _rulesEng modelToWorld [0,-0.15,0.95];
	_lampEng = createVehicle ["Land_TentLamp_01_suspended_F", _lampPosEng, [], 0, "CAN_COLLIDE"];
	_lampEng setDir _dirLamps;
	_lampEng allowDamage false;
	_lampEng enableSimulationGlobal false;
	
} foreach GRLIB_all_fobs;