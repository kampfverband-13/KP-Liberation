




Anpassungen für eine neues Liberation
------------------------------------------------------------------------------------------


initServer.sqf: Resourcen-Funktionen


scripts\server\remotecall\sector_liberated_remote_call.sqf
if (isServer) then { [] spawn gain_resources; []execVM "MilSimUnited\roadblocks.sqf" };


init.sqf: 
Klassen-Anpassungen für z.B. ACE-Cargo 
Advanced Towing und Sling Loading Config


Missionframework/scripts/client/build/do_build.sqf


kp_liberation_config.sqf


ui\mission_params.hpp


scripts\server\base\huron_manager.sqf: auskommentieren


presets\blufor\custom.sqf


scripts\client\actions\do_recycle.sqf
isKindOf "Car" etc. Recycle-Werte


stringtable.xml: "Tier 1- 4" als Fahrzeugbezeichnungen


ui/liberation_build.hpp: austauschen für "Tier 1- 4" Fahrzeug-Icons


scripts/client/build/do_build_fob.sqf:
_minfobdist = 1;
_minsectordist = 1;


initPlayerLocal.sqf: Regeln und Situation


Logo ersetzen: 
Statt "res/lib.paa" und "res/splash_libe2.paa" muss "res/MilSimUnited.paa" aufgerufen werden
	Dateiaufrufe ändern in:
		\description.ext
		ui\liberation_titles.hpp
		ui\liberation_menu.hpp
		
		
functions\curator\fn_initCuratorHandlers.sqf: Komplett auskommentieren


GUI nur noch auf Karte anzeigen: 
scripts\client\ui\ui_manager.sqf: durch den Modifizierten ersetzen


Notifications deaktivieren:
BIS_fnc_showNotification suchen und auskommentieren:
- scripts\client\remotecall\remote_call_sector.sqf




call KPLIB_fnc_createManagedUnit und KPLIB_fnc_spawnVehicle mit spawn ersetzen: 

Funktionssicher:
functions\fn_spawnRegularSquad.sqf
scripts\server\ai\troup_transport.sqf
scripts\server\battlegroup\spawn_battlegroup.sqf
scripts\server\patrols\manage_one_civilian_patrol.sqf
scripts\server\patrols\manage_one_patrol.sqf
scripts\server\patrols\send_paratroopers.sqf
functions\fn_spawnBuildingSquad.sqf
functions\fn_spawnCivilians.sqf
functions\fn_spawnMilitaryPostSquad.sqf

Alle Vorkommen:
functions\fn_forceBluforCrew.sqf
functions\fn_spawnBuildingSquad.sqf ------------------------------------ !
functions\fn_spawnCivilians.sqf --------------------------------------------- !
functions\fn_spawnGuerillaGroup.sqf
functions\fn_spawnMilitaryPostSquad.sqf ------------------------------ !
functions\fn_spawnMilitiaCrew.sqf
functions\fn_spawnRegularSquad.sqf
scripts\server\ai\troup_transport.sqf
scripts\server\battlegroup\spawn_battlegroup.sqf
scripts\server\civinformant\tasks\civinfo_task.sqf
scripts\server\patrols\manage_one_civilian_patrol.sqf
scripts\server\patrols\manage_one_patrol.sqf
scripts\server\patrols\send_paratroopers.sqf
scripts\server\secondary\convoy_hijack.sqf
scripts\server\secondary\fob_hunting.sqf
scripts\server\secondary\search_and_rescue.sqf
scripts\server\sector\attack_in_progress_fob.sqf
scripts\server\sector\attack_in_progress_sector.sqf











Useful snippets and console commands:
------------------------------------------------------------------------------------------
[] spawn gain_resources;
[] spawn lose_resources;



//SPAWN SUPPLYBOX CONSOLE:
params [["_resource", KP_liberation_supply_crate],["_amount", 100],["_pos", getPos player]];

private _crate = _resource createVehicle getPos player;
_crate setVariable ["KP_liberation_crate_value", 100, true]; 
clearWeaponCargoGlobal _crate; 
clearMagazineCargoGlobal _crate; 
clearBackpackCargoGlobal _crate; 
clearItemCargoGlobal _crate;

[_crate,3] call ace_cargo_fnc_setSize;
[_crate,3] call ace_cargo_fnc_setSpace;
["ACE_Wheel", _crate] call ace_cargo_fnc_addCargoItem;
["ACE_Track", _crate] call ace_cargo_fnc_addCargoItem;
_crate setVariable ["ACE_isRepairFacility",1];



//SPAWN AMMOBOX CONSOLE:
params [["_resource", KP_liberation_ammo_crate],["_amount", 100],["_pos", getPos player]];

private _crate = _resource createVehicle getPos player;
_crate setVariable ["KP_liberation_crate_value", 100, true]; 
clearWeaponCargoGlobal _crate; 
clearMagazineCargoGlobal _crate; 
clearBackpackCargoGlobal _crate; 
clearItemCargoGlobal _crate;

[_crate,3] call ace_cargo_fnc_setSize;
[_crate, 1200] call ace_rearm_fnc_makeSource;



//SPAWN FUELBOX CONSOLE:
params [["_resource", KP_liberation_fuel_crate],["_amount", 100],["_pos", getPos player]];

private _crate = _resource createVehicle getPos player;
_crate setVariable ["KP_liberation_crate_value", 100, true]; 
clearWeaponCargoGlobal _crate; 
clearMagazineCargoGlobal _crate; 
clearBackpackCargoGlobal _crate; 
clearItemCargoGlobal _crate;

[_crate,3] call ace_cargo_fnc_setSize;
[_crate, 1200] call ace_refuel_fnc_makeSource;



params [["_resource", KP_liberation_supply_crate],["_amount", 100],["_pos", getPos player]];



private _crate = _resource createVehicle getPos player; 
_crate setMass 500; 
_crate setVariable ["KP_liberation_crate_value", 100, true]; 
clearWeaponCargoGlobal _crate; 
clearMagazineCargoGlobal _crate; 
clearBackpackCargoGlobal _crate; 
clearItemCargoGlobal _crate;



addMissionEventHandler ["MapSingleClick", { 
    params ["", "_pos", "", ""]; 
    _marker = [allMapMarkers, _pos] call BIS_fnc_nearestPosition; 
    if (_marker in sectors_allSectors) then { 
        if (_marker in blufor_sectors) then { 
            blufor_sectors = blufor_sectors - [_marker]; 
        } else { 
            blufor_sectors = blufor_sectors + [_marker]; 
        }; 
        publicVariable "blufor_sectors"; 
    }; 
    removeMissionEventHandler ["MapSingleClick", _thisEventHandler]; 
    openMap [false, false]; 
}]; 
openMap [true, true];



// Serverseitige Nachricht:

_hs_hint = format['0: %1 | 1: %2 | 2: %3',_nearfob select 0, _nearfob select 1, _nearfob select 2];
OR
_hs_hint = format['_crate: %1', typeOf _crate];
[_hs_hint, 'hs_MPhint'] call BIS_fnc_mp;









