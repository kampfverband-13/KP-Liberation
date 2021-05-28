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

	_helper1 = createVehicle ["Sign_Arrow_F", _referencePos, [], 0, "CAN_COLLIDE"];  
	_helper2 = createVehicle ["Sign_Arrow_F", (getMarkerPos (_closestMarker select 0)), [], 0, "CAN_COLLIDE"]; 
	_distance = _helper1 distance _helper2; 

	if ((_closestMarker select 0) in blufor_sectors OR _distance > 1000) then {    
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
_helper1 = createVehicle ["Sign_Arrow_F", (_randomElement select 0), [], 0, "CAN_COLLIDE"];
_helper2 = createVehicle ["Sign_Arrow_F", getMarkerPos (_randomElement select 1), [], 0, "CAN_COLLIDE"];
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
	
	_helper3 = createVehicle ["Sign_Arrow_F", _pos, [], 0, "CAN_COLLIDE"];
	_marker = [blufor_sectors, _pos] call BIS_fnc_nearestPosition; 
	_nearestBluforSectorDistance = _helper3 distance (getMarkerPos _marker);
	
	_nearEntities = _helper3 nearEntities ["Man", 500];
	playerIsNear = 0;
	{
		if(isPlayer _x) then {
			playerIsNear = 1;
		};
	} foreach _nearEntities;
	
	
	if(_nearestBluforSectorDistance > 100) then {
		if(playerIsNear == 0) then {
			{   
				_x addCuratorEditableObjects [[_helper3], true];
			} foreach allCurators; 
			
			_roadBlockVehicle1 = selectRandom opfor_vehicles_low_intensity;
			_roadBlockVehicle2 = selectRandom opfor_vehicles_low_intensity;
			if(combat_readiness > 50) then {
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