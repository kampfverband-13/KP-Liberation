hs_spawn = compileFinal "
	_headlessClients = entities 'HeadlessClient_F';
	_humanPlayers = allPlayers - _headlessClients;
	_count_players = count _humanPlayers;
	
	if(_count_players > 0) then {
		
        _spawnChance = 10;
		
        if(_count_players < 5) then {_spawnChance = 20;};
        if(_count_players >= 5 && _count_players < 15) then {_spawnChance = 15;};
        if(_count_players >= 15) then {_spawnChance = 10;};
           
		_hs_randomizer = floor(random _spawnchance);
		
		if( (_hs_randomizer < 2) && ((opfor countSide allGroups) < 140) ) then {
			_player = selectRandom _humanPlayers;
			_too_close = false;
			
			_spawn_position = [ [ [getPos _player, 750] ], ['water'] ] call BIS_fnc_randomPos;

			{
				if (_spawn_position distance _x < 500) then {
					_too_close = true;
				};
			} forEach allPlayers;
			
			_allBases = GRLIB_all_fobs;
			
			{
				if ((getPos _player) distance _x < 500) then {
					_too_close = true;
				};
			} foreach _allBases;
			
			if (_too_close == false) then {
				_group_spawn = createGroup opfor;
				
				'UK3CB_AAF_O_SF_DEM' createUnit [_spawn_position, _group_spawn, '', 0.2, 'private']; sleep 1;
				'UK3CB_AAF_O_SF_MK' createUnit [_spawn_position, _group_spawn, '', 0.2, 'private']; sleep 1;
				'UK3CB_AAF_O_SF_AT' createUnit [_spawn_position, _group_spawn, '', 0.2, 'private']; sleep 1;
				'UK3CB_AAF_O_SF_AA' createUnit [_spawn_position, _group_spawn, '', 0.2, 'private']; sleep 1;

				_wp1_spawn = _group_spawn addWaypoint [getPos _player, 100];
				_wp1_spawn setwaypointtype 'MOVE';
				_wp1_spawn setWaypointBehaviour 'AWARE';
				_wp1_spawn setWaypointSpeed 'FULL';

				_wp2_spawn = _group_spawn addWaypoint [getPos _player, 400];
				_wp3_spawn = _group_spawn addWaypoint [getPos _player, 400];
				_wp4_spawn = _group_spawn addWaypoint [getPos _player, 400];
				_wp5_spawn = _group_spawn addWaypoint [getPos _player, 400];
				_wp6_spawn = _group_spawn addWaypoint [getpos _player, 400];
				_wp6_spawn setWaypointStatements ['true', '{deleteVehicle _x} forEach thisList;'];
			};
		};
	};
";