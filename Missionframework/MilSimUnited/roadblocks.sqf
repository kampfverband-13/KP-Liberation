if (count activeRoadblock != 0) then {
	_posRoadblock = activeRoadblock select 0;
	_grpV1 = activeRoadblock select 1;
	_grpV2 = activeRoadblock select 2;
	_grpInf1 = activeRoadblock select 3;
	_grpInf2 = activeRoadblock select 4;
	
	if ({alive _x} count units _grpV1 < 1 && {alive _x} count units _grpV2 < 1 && {alive _x} count units _grpInf1 < 1 && {alive _x} count units _grpInf2 < 1) then {
		activeRoadblock = [];
	};
};


if (count activeRoadblock >= 1) exitWith {};

possibleLocations = [];   
allMarkers = allMapMarkers;    
testarray = [];

{
	_typeOfMarker = markerType _x;
	if(_typeOfMarker != "loc_Fuelstation" && _typeOfMarker != "o_support" && _typeOfMarker != "n_art" && _typeOfMarker != "n_service" ) then { 
		testarray pushback _x; 
	}; 
} foreach allMarkers; 

newMarkers =  allMarkers - testarray; 
newMarkers = newMarkers - blufor_sectors;

{   
	_refPos = _x;   
	_referencePos = getMarkerPos _refPos;    

	_closestMarker = [newMarkers, [], { _referencePos distance getMarkerPos _x }, "ASCEND"] call BIS_fnc_sortBy;   

	_helper1 = createVehicle ["Land_HelipadEmpty_F", _referencePos, [], 0, "CAN_COLLIDE"];  
	_helper2 = createVehicle ["Land_HelipadEmpty_F", (getMarkerPos (_closestMarker select 0)), [], 0, "CAN_COLLIDE"]; 
	_distance = _helper1 distance _helper2; 

	if ((_closestMarker select 0) in blufor_sectors OR _distance > 1300) then {    
		} else {
		if(_distance > 300) then {
			_distanceHalf = _distance / 2;
			_relativeDirection = _helper1 getRelDir (getMarkerPos (_closestMarker select 0));   
			_center = _helper1 getRelPos [_distanceHalf,_relativeDirection];  

			possibleLocations append [[_center,(_closestMarker select 0)]];   
		};
	};
	
	deleteVehicle _helper1;       
	deleteVehicle _helper2;
	sleep 0.5;   
} foreach blufor_sectors;

_randomElement = selectRandom possibleLocations;
_helper1 = createVehicle ["Land_HelipadEmpty_F", (_randomElement select 0), [], 0, "CAN_COLLIDE"];
_helper2 = createVehicle ["Land_HelipadEmpty_F", getMarkerPos (_randomElement select 1), [], 0, "CAN_COLLIDE"];
{   
	_x addCuratorEditableObjects [[_helper1], true];
	_x addCuratorEditableObjects [[_helper2], true];
} foreach allCurators; 

_nearestRoadCenter = _helper1 nearRoads 300;
_nearestRoadOpforPoint = _helper2 nearRoads 500;
_forbiddenRoads = _helper2 nearRoads 100;
_nearestRoadOpforPoint = _nearestRoadOpforPoint - _forbiddenRoads;


_intersect = _nearestRoadCenter arrayIntersect _nearestRoadOpforPoint;
if (count _intersect != 0) then {
	_randomStreetElement = selectRandom _intersect;
	_pos = getPos _randomStreetElement;
	
	_helper3 = createVehicle ["Land_HelipadEmpty_F", _pos, [], 0, "CAN_COLLIDE"];
	_marker = [blufor_sectors, _pos] call BIS_fnc_nearestPosition; 
	_nearestBluforSectorDistance = _helper3 distance (getMarkerPos _marker);
	
	_nearEntities = _helper3 nearEntities ["Man", 500];
	playerIsNear = 0;
	{
		if(isPlayer _x) then {
			playerIsNear = 1;
		};
	} foreach _nearEntities;
	
	
	if(_nearestBluforSectorDistance > 250) then {
		if(playerIsNear == 0) then {
			
			_roadBlockVehicle1 = selectRandom opfor_vehicles_low_intensity;
			_roadBlockVehicle2 = selectRandom opfor_vehicles_low_intensity;
			if(combat_readiness >= 80) then {
				_roadBlockVehicle1 = selectRandom opfor_vehicles;
				_roadBlockVehicle2 = selectRandom opfor_vehicles;
			} else {
				_roadBlockVehicle1 = selectRandom opfor_vehicles_low_intensity;
				_roadBlockVehicle2 = selectRandom opfor_vehicles_low_intensity;
			};
			
			_connectedRoads = roadsConnectedTo _randomStreetElement;
			_posVehicle1 = getPos (_connectedRoads select 0);
			_info1 = getRoadInfo (_connectedRoads select 0);
			_roadDir1 = (_info1 select 6) getDir (_info1 select 7);
			_dirVehicle1 = _roadDir1 + 210;
			_posVehicle2 = getPos (_connectedRoads select 1);
			_info2 = getRoadInfo (_connectedRoads select 1);
			_roadDir2 = (_info2 select 6) getDir (_info2 select 7);
			_dirVehicle2 = _roadDir2 + 30;

			_vehicle1 = createVehicle [_roadBlockVehicle1, _posVehicle1, [], 0, "NONE"];
			_vehicle2 = createVehicle [_roadBlockVehicle2, _posVehicle2, [], 0, "NONE"];

			_vehicle1 setDir _dirVehicle1;
			_vehicle2 setDir _dirVehicle2;
			
			_grpVehicle1 = createGroup east;
			_spawnGunner1 = _grpVehicle1 createUnit [opfor_rifleman, [0,0,0], [], 0, "NONE"];
			_spawnGunner1 moveInGunner _vehicle1;
			
			_grpVehicle2 = createGroup east;
			_spawnGunner2 = _grpVehicle2 createUnit [opfor_rifleman, [0,0,0], [], 0, "NONE"];
			_spawnGunner2 moveInGunner _vehicle2;
			
			_rbPos1 = _vehicle1 getRelPos [6,-30];
			_rbPos2 = _vehicle2 getRelPos [6,-30];
			
			_grpInfantry1 = createGroup east;
			_spawnInf1 = _grpInfantry1 createUnit [opfor_rifleman, _rbPos1, [], 0, "NONE"];
			_spawnInf2 = _grpInfantry1 createUnit [opfor_rpg, _rbPos1, [], 0, "NONE"];
			_grpInfantry2 = createGroup east;
			_spawnInf3 = _grpInfantry2 createUnit [opfor_rifleman, _rbPos2, [], 0, "NONE"];
			_spawnInf4 = _grpInfantry2 createUnit [opfor_aa, _rbPos2, [], 0, "NONE"];
			
			_rbSandbagPos1 = _vehicle1 getRelPos [7.5,-30];
			_rbSandbagPos2 = _vehicle2 getRelPos [7.5,-30];
			_rbSandbagDir1 = _roadDir1;
			_rbSandbagDir2 = _roadDir2;
			
			_sandbag1 = createVehicle ["Land_BagFence_01_long_green_F", _rbSandbagPos1, [], 0, "CAN_COLLIDE"];
			_sandbag1 setDir _rbSandbagDir1;
			
			_sandbag2 = createVehicle ["Land_BagFence_01_long_green_F", _rbSandbagPos2, [], 0, "CAN_COLLIDE"];
			_sandbag2 setDir _rbSandbagDir2;
			
			_rbSandbagPos3 = _sandbag1 getRelPos [2.5,-90];
			_rbSandbagPos4 = _sandbag2 getRelPos [2.5,-90];
			
			_sandbag3 = createVehicle ["Land_BagFence_01_long_green_F", _rbSandbagPos3, [], 0, "CAN_COLLIDE"];
			_sandbag3 setDir _rbSandbagDir1;
			
			_sandbag4 = createVehicle ["Land_BagFence_01_long_green_F", _rbSandbagPos4, [], 0, "CAN_COLLIDE"];
			_sandbag4 setDir _rbSandbagDir2;
			
			_rbSandbagPos5 = _sandbag1 getRelPos [-2.5,-90];
			_rbSandbagPos6 = _sandbag2 getRelPos [-2.5,-90];
			
			_sandbag5 = createVehicle ["Land_BagFence_01_long_green_F", _rbSandbagPos5, [], 0, "CAN_COLLIDE"];
			_sandbag5 setDir _rbSandbagDir1;
			
			_sandbag6 = createVehicle ["Land_BagFence_01_long_green_F", _rbSandbagPos6, [], 0, "CAN_COLLIDE"];
			_sandbag6 setDir _rbSandbagDir2;
						
			{   
				_x addCuratorEditableObjects [[_helper3], true];
				_x addCuratorEditableObjects [[_sandbag1], true];
				_x addCuratorEditableObjects [[_sandbag2], true];
				_x addCuratorEditableObjects [[_sandbag3], true];
				_x addCuratorEditableObjects [[_sandbag4], true];
				_x addCuratorEditableObjects [[_sandbag5], true];
				_x addCuratorEditableObjects [[_sandbag6], true];
			} foreach allCurators; 
			
			activeRoadblock = [(getPos _helper3),_grpVehicle1,_grpVehicle2,_grpInfantry1,_grpInfantry2];
			
		} else {
			systemChat "player is near!";
			deleteVehicle _helper3;
		};
	} else {
		systemChat "blufor sector is near!";
		deleteVehicle _helper3; 
	};
};

sleep 2;
deleteVehicle _helper1;       
deleteVehicle _helper2;