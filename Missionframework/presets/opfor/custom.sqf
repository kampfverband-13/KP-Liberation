/*
    Needed Mods:
    - None

    Optional Mods:
    - None
*/

// Enemy infantry classes
opfor_officer = "LOP_AA_Infantry_Rifleman";                                          // Officer
opfor_squad_leader = "LOP_AA_Infantry_Rifleman";                                  // Squad Leader
opfor_team_leader = "LOP_AA_Infantry_Rifleman";                                   // Team Leader
opfor_sentry = "LOP_AA_Infantry_Rifleman";                                      // Rifleman (Lite)
opfor_rifleman = "LOP_AA_Infantry_Rifleman";                                         // Rifleman
opfor_rpg = "LOP_AA_Infantry_AT";                                         // Rifleman (LAT)
opfor_grenadier = "LOP_AA_Infantry_MG_2";                                     // Grenadier
opfor_machinegunner = "LOP_AA_Infantry_MG_2";                                 // Autorifleman
opfor_heavygunner = "LOP_AA_Infantry_MG_2";                                   // Heavy Gunner
opfor_marksman = "LOP_AA_Infantry_MG_2";                                       // Marksman
opfor_sharpshooter = "LOP_AA_Infantry_AT";                                   // Sharpshooter
opfor_sniper = "LOP_IRAN_Infantry_AA";                                      // Sniper
opfor_at = "LOP_AA_Infantry_AT";                                            // AT Specialist
opfor_aa = "LOP_IRAN_Infantry_AA";                                            // AA Specialist
opfor_medic = "LOP_AA_Infantry_Rifleman";                                              // Combat Life Saver
opfor_engineer = "LOP_AA_Infantry_Rifleman";                                        // Engineer
opfor_paratrooper = "PO_IA_Infantry_SF_AT";                                   // Paratrooper

// Enemy vehicles used by secondary objectives.
opfor_mrap = "rhsusf_M1117_D";                                             // M-ATV
opfor_mrap_armed = "rhsusf_M1117_D";                                   // MATV (HMG)
opfor_transport_helo = "LOP_AA_Mi8MTV3_FAB";                         // Merlin
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
    "LOP_AA_Infantry_Rifleman",
    "LOP_AA_Infantry_MG_2",
    "LOP_AA_Infantry_AT",
    "LOP_IRAN_Infantry_AA",
    "LOP_AA_Infantry_Rifleman",
    "LOP_AA_Infantry_MG_2",
    "LOP_AA_Infantry_AT",
  	"LOP_IRAN_Infantry_AA",
    "LOP_AA_Infantry_Rifleman",
  	"LOP_AA_Infantry_MG_2",
  	"LOP_AA_Infantry_AT",
    "LOP_AA_Infantry_Rifleman"
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
	"LOP_AA_T72BB",
	"LOP_AA_ZSU234"
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
	"LOP_AA_T72BB",
	"LOP_AA_ZSU234"
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
	"LOP_AA_Mi8MTV3_FAB"
];


// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
	"LOP_AA_Mi8MTV3_FAB",
	"LOP_IRAN_AH1Z_CS"
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
	"rhsgref_cdf_su25",
	"rhsgref_cdf_mig29s"
];
