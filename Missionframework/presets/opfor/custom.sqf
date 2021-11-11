/*
    Needed Mods:
    - None

    Optional Mods:
    - None
*/

// Enemy infantry classes
opfor_officer = "O_Soldier_F";                                          // Officer
opfor_squad_leader = "O_Soldier_F";                                  // Squad Leader
opfor_team_leader = "O_Soldier_F";                                   // Team Leader
opfor_sentry = "O_Soldier_F";                                      // Rifleman (Lite)
opfor_rifleman = "O_Soldier_F";                                         // Rifleman
opfor_rpg = "O_Soldier_LAT_F";                                         // Rifleman (LAT)
opfor_grenadier = "O_Soldier_AR_F";                                     // Grenadier
opfor_machinegunner = "O_Soldier_AR_F";                                 // Autorifleman
opfor_heavygunner = "O_Soldier_AR_F";                                   // Heavy Gunner
opfor_marksman = "O_Soldier_AR_F";                                       // Marksman
opfor_sharpshooter = "O_Soldier_LAT_F";                                   // Sharpshooter
opfor_sniper = "O_Soldier_AA_F";                                      // Sniper
opfor_at = "O_Soldier_LAT_F";                                            // AT Specialist
opfor_aa = "O_Soldier_AA_F";                                            // AA Specialist
opfor_medic = "O_Soldier_F";                                              // Combat Life Saver
opfor_engineer = "O_Soldier_F";                                        // Engineer
opfor_paratrooper = "O_soldier_PG_F";                                   // Paratrooper

// Enemy vehicles used by secondary objectives.
opfor_mrap = "rhsusf_M1117_D";                                             // M-ATV
opfor_mrap_armed = "rhsusf_M1117_D";                                   // MATV (HMG)
opfor_transport_helo = "rhsgref_cdf_b_reg_Mi8amt";                         // Merlin
opfor_transport_truck = "rhsusf_M1083A1P2_B_M2_D_fmtv_usarmy";                         // Kamaz Transport (Covered)
opfor_ammobox_transport = "rhsusf_M977A4_BKIT_M2_usarmy_d";                     // Kamaz Transport (Open) -> Has to be able to transport resource crates!
opfor_fuel_truck = "UK3CB_BAF_MAN_HX60_Fuel_Sands";                                 // Kamaz Fuel
opfor_ammo_truck = "rhsusf_M977A4_AMMO_BKIT_M2_usarmy_d";                                 // Kamz Ammo
opfor_fuel_container = "B_Slingload_01_Fuel_F";                         // Huron Fuel Pod
opfor_ammo_container = "B_Slingload_01_Ammo_F";                         // Huron Ammo Pod
opfor_flag = "Flag_CSAT_F";                                              // Flag


/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

militia_squad = [
    "O_Soldier_F",
    "O_Soldier_AR_F",
    "O_Soldier_LAT_F",
    "O_Soldier_AA_F",
    "O_Soldier_F",
    "O_Soldier_AR_F",
    "O_Soldier_LAT_F",
    "O_Soldier_F",
  	"O_Soldier_AR_F",
  	"O_Soldier_LAT_F",
  	"O_Soldier_F",
    "O_Soldier_F"
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.

militia_vehicles = [
	"rhsusf_m1025_d_m2",
    "rhsusf_M1117_D"
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
opfor_vehicles = [
	"rhsusf_m1025_d_m2",
	"rhsusf_M1117_D",
	"rhs_t72bb_tv",
	"rhs_zsu234_aa"
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
	"rhsusf_m1025_d_m2",
	"rhsusf_M1117_D"
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
	"rhsusf_m1025_d_m2",
	"rhsusf_M1117_D",
	"rhs_t72bb_tv",
	"rhs_zsu234_aa"
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
	"rhsusf_m1025_d_m2",
	"rhsusf_M1117_D"
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
opfor_troup_transports = [
	"rhsusf_M1083A1P2_B_M2_D_fmtv_usarmy",
	"RHS_Mi8MTV3_heavy_vdv"
];


// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
	"RHS_Mi8MTV3_heavy_vdv"
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
	"RHS_Su25SM_vvs",
	"rhs_mig29sm_vvs"
];
