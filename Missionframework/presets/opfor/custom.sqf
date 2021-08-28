/*
    Needed Mods:
    - None

    Optional Mods:
    - None
*/

// Enemy infantry classes
opfor_officer = "UK3CB_AAF_O_JNR_OFF";                                          // Officer
opfor_squad_leader = "UK3CB_AAF_O_SF_SL";                                  // Squad Leader
opfor_team_leader = "UK3CB_AAF_O_SF_TL";                                   // Team Leader
opfor_sentry = "UK3CB_AAF_O_SF_RIF_2";                                      // Rifleman (Lite)
opfor_rifleman = "UK3CB_AAF_O_SF_RIF_1";                                         // Rifleman
opfor_rpg = "UK3CB_AAF_O_SF_LAT";                                         // Rifleman (LAT)
opfor_grenadier = "UK3CB_AAF_O_SF_GL";                                     // Grenadier
opfor_machinegunner = "UK3CB_AAF_O_SF_AR";                                 // Autorifleman
opfor_heavygunner = "UK3CB_AAF_O_SF_MG";                                   // Heavy Gunner
opfor_marksman = "UK3CB_AAF_O_SF_MK";                                       // Marksman
opfor_sharpshooter = "UK3CB_AAF_O_SF_MK";                                   // Sharpshooter
opfor_sniper = "UK3CB_AAF_O_SF_SNI";                                      // Sniper
opfor_at = "UK3CB_AAF_O_SF_AT";                                            // AT Specialist
opfor_aa = "UK3CB_AAF_O_SF_AA";                                            // AA Specialist
opfor_medic = "UK3CB_AAF_O_SF_MD";                                              // Combat Life Saver
opfor_engineer = "UK3CB_AAF_O_SF_DEM";                                        // Engineer
opfor_paratrooper = "UK3CB_AAF_O_SF_RIF_2";                                   // Paratrooper

// Enemy vehicles used by secondary objectives.
opfor_mrap = "UK3CB_AAF_O_Tigr_STS";                                             // M-ATV
opfor_mrap_armed = "UK3CB_AAF_O_GAZ_Vodnik_PKT";                                   // MATV (HMG)
opfor_transport_helo = "UK3CB_AAF_O_Mi8";                         // Merlin
opfor_transport_truck = "UK3CB_AAF_O_Ural";                         // Kamaz Transport (Covered)
opfor_ammobox_transport = "UK3CB_AAF_O_Ural_Open";                     // Kamaz Transport (Open) -> Has to be able to transport resource crates!
opfor_fuel_truck = "UK3CB_AAF_O_Ural_Fuel";                                 // Kamaz Fuel
opfor_ammo_truck = "UK3CB_AAF_O_Ural_Ammo";                                 // Kamz Ammo
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";                         // Huron Fuel Pod
opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F";                         // Huron Ammo Pod
opfor_flag = "Flag_AAF_F";                                              // Flag


/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

militia_squad = [
    "UK3CB_AAF_O_RIF_1",
    "UK3CB_AAF_O_RIF_1",
    "UK3CB_AAF_O_RIF_1",
    "UK3CB_AAF_O_MG",
    "UK3CB_AAF_O_MG",
    "UK3CB_AAF_O_AT",
    "UK3CB_AAF_O_AT",
    "UK3CB_AAF_O_GL",
  	"UK3CB_AAF_O_GL",
  	"UK3CB_AAF_O_MK",
  	"UK3CB_AAF_O_MK",
    "UK3CB_AAF_O_AA"
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.

militia_vehicles = [
    "UK3CB_AAF_O_Pickup_DSHKM",
  	"UK3CB_AAF_O_Tigr_STS",
  	"UK3CB_AAF_O_LR_SPG9",
  	"UK3CB_AAF_O_LR_SF_M2"
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
opfor_vehicles = [
    "UK3CB_AAF_O_BTR80a",
  	"UK3CB_AAF_O_BTR80a",
  	"UK3CB_AAF_O_BTR80a",
  	"UK3CB_AAF_O_BTR80a",
  	"UK3CB_AAF_O_BTR80a",
    "UK3CB_AAF_O_BMP2K",
  	"UK3CB_AAF_O_BMP2K",
    "UK3CB_AAF_O_BMP2K",
    "UK3CB_AAF_O_BMP2K",
    "UK3CB_AAF_O_T72A",
    "UK3CB_AAF_O_T72A",
    "UK3CB_AAF_O_T72A",
    "UK3CB_AAF_O_T72BC",
    "UK3CB_AAF_O_T72BC",
  	"UK3CB_AAF_O_2S3",
	"UK3CB_AAF_O_2S6M_Tunguska",
	"UK3CB_AAF_O_ZsuTank"
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
	"UK3CB_AAF_O_BRDM2",
	"UK3CB_AAF_O_Tigr_STS",
	"UK3CB_AAF_O_GAZ_Vodnik_Cannon",
	"UK3CB_AAF_O_GAZ_Vodnik_KVPT",
	"UK3CB_AAF_O_GAZ_Vodnik_PKT",
	"UK3CB_AAF_O_LR_AGS30",
	"UK3CB_AAF_O_LR_M2",
	"UK3CB_AAF_O_LR_SPG9",
	"UK3CB_AAF_O_LR_SF_AGS30",
	"UK3CB_AAF_O_LR_SF_M2",
	"UK3CB_AAF_O_Pickup_DSHKM",
	"UK3CB_AAF_O_UAZ_SPG9",
	"UK3CB_AAF_O_UAZ_MG"
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
	"UK3CB_AAF_O_BTR80a",
	"UK3CB_AAF_O_BTR80a",
	"UK3CB_AAF_O_T72A",
	"UK3CB_AAF_O_T72BC",
	"UK3CB_AAF_O_BMP2K",
	"UK3CB_AAF_O_BMP2K",
	"UK3CB_AAF_O_Mi_24P",
	"UK3CB_AAF_O_Mi_24V",
	"UK3CB_AAF_O_Mi8AMTSh"
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
	"UK3CB_AAF_O_BRDM2",
	"UK3CB_AAF_O_Tigr_STS",
	"UK3CB_AAF_O_GAZ_Vodnik_Cannon",
	"UK3CB_AAF_O_GAZ_Vodnik_KVPT",
	"UK3CB_AAF_O_Pickup_DSHKM",
	"UK3CB_AAF_O_Kamaz_Open",
	"UK3CB_AAF_O_Ural_Open",
	"UK3CB_AAF_O_LR_SF_M2",
	"UK3CB_AAF_O_LR_SF_AGS30",
	"UK3CB_AAF_O_Pickup_M2",
	"UK3CB_AAF_O_GAZ_Vodnik_PKT",
	"UK3CB_AAF_O_Offroad_M2",
	"UK3CB_AAF_O_UAZ_SPG9",
	"UK3CB_AAF_O_LR_SPG9",
	"UK3CB_AAF_O_Mi8"
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
opfor_troup_transports = [
	"UK3CB_AAF_O_Mi_24P",
	"UK3CB_AAF_O_Mi_24V",
	"UK3CB_AAF_O_Mi8AMTSh",
	"UK3CB_AAF_O_Kamaz_Open",
	"UK3CB_AAF_O_Ural_Open",
	"UK3CB_AAF_O_Ural_Open",
	"UK3CB_AAF_O_BRDM2",
	"UK3CB_AAF_O_Mi8"
];


// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
	"UK3CB_AAF_O_Mi_24P",
	"UK3CB_AAF_O_Mi_24V",
	"UK3CB_AAF_O_Mi8AMTSh",
	"UK3CB_AAF_O_Mi8"
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
	"UK3CB_AAF_O_SF_SL",
	"UK3CB_AAF_O_SF_AR",
	"UK3CB_AAF_O_SF_MD",
	"UK3CB_AAF_O_SF_LAT",
	"UK3CB_AAF_O_SF_RIF_1",
	"UK3CB_AAF_O_SF_TL",
	"UK3CB_AAF_O_SF_DEM",
	"UK3CB_AAF_O_SF_MK",
	"UK3CB_AAF_O_L39_AA",
	"UK3CB_AAF_O_L39_CAS",
	"UK3CB_AAF_O_MIG29S",
	"UK3CB_AAF_O_MIG29SM",
	"UK3CB_AAF_O_Su25SM",
	"UK3CB_AAF_O_Su25SM_CAS",
	"UK3CB_AAF_O_Su25SM_Cluster",
	"UK3CB_AAF_O_Su25SM_KH29",
	"UK3CB_AAF_O_Cessna_T41_Armed"
];