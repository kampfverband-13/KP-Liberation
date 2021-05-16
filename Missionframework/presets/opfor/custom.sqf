/*
    Needed Mods:
    - None

    Optional Mods:
    - None
*/

// Enemy infantry classes
opfor_officer = "LOP_SLA_Infantry_Officer";                                 // Officer
opfor_squad_leader = "LOP_SLA_Infantry_SL";                     				// Squad Leader
opfor_team_leader = "LOP_SLA_Infantry_TL";                         // Team Leader
opfor_sentry = "LOP_SLA_Infantry_Rifleman_2";                          // Rifleman (Lite)
opfor_rifleman = "LOP_SLA_Infantry_Rifleman";                        // Rifleman
opfor_rpg = "LOP_SLA_Infantry_AT";                                          // Rifleman (LAT)
opfor_grenadier = "LOP_SLA_Infantry_GL";                                     // Grenadier
opfor_machinegunner = "LOP_SLA_Infantry_MG";                                 // Autorifleman
opfor_heavygunner = "LOP_SLA_Infantry_MG";                                  // Heavy Gunner
opfor_marksman = "LOP_SLA_Infantry_Marksman";                                       // Marksman
opfor_sharpshooter = "LOP_SLA_Infantry_Marksman";                                // Sharpshooter
opfor_sniper = "LOP_SLA_Infantry_Marksman";                                            // Sniper
opfor_at = "LOP_SLA_Infantry_AT";                                            // AT Specialist
opfor_aa = "LOP_SLA_Infantry_AA";                                            // AA Specialist
opfor_medic = "LOP_SLA_Infantry_Corpsman";                                              // Combat Life Saver
opfor_engineer = "LOP_SLA_Infantry_Engineer";                                        // Engineer
opfor_paratrooper = "LOP_SLA_Infantry_Rifleman_2";  




// Enemy vehicles used by secondary objectives.

opfor_mrap = "LOP_SLA_UAZ_DshKM";                       // Ifrit
opfor_mrap_armed = "LOP_SLA_BTR60";                 // Ifrit (HMG)
opfor_transport_helo = "LOP_SLA_Mi8MT_Cargo";             // Mi-290 Taru (Bench)
opfor_transport_truck = "LOP_SLA_Ural";            // Tempest Transport (Covered)
opfor_ammobox_transport = "LOP_SLA_Ural_open";          // Tempest Transport (Open) -> Has to be able to transport resource crates!
opfor_fuel_truck = "rhsgref_cdf_ural_fuel";                 // Tempest Fuel
opfor_ammo_truck = "rhsgref_cdf_gaz66_ammo";                 // Tempest Ammo
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";             // Taru Fuel Pod
opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F";             // Taru Ammo Pod
opfor_flag = "lop_Flag_sla_F";                       // Flag



/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

militia_squad = [
    "LOP_SLA_Infantry_Rifleman_2",
    "LOP_SLA_Infantry_Rifleman_2",
    "LOP_SLA_Infantry_Rifleman_2",
    "LOP_SLA_Infantry_MG",
    "LOP_SLA_Infantry_MG",
    "LOP_SLA_Infantry_AT",
    "LOP_SLA_Infantry_AT",
    "LOP_SLA_Infantry_Corpsman",
  	"LOP_SLA_Infantry_Corpsman",
  	"LOP_SLA_Infantry_Marksman",
  	"LOP_SLA_Infantry_Marksman",
    "LOP_SLA_Infantry_AA" 
];


// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.

militia_vehicles = [
    "LOP_SLA_UAZ_AGS",					// Qilin (armed)
  	"LOP_SLA_UAZ_DshKM",
  	"LOP_SLA_UAZ_SPG"
];



// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
opfor_vehicles = [
    "LOP_SLA_BTR70",
  	"LOP_SLA_BTR70",
  	"LOP_SLA_BTR70",
  	"LOP_SLA_BTR70",
    "LOP_SLA_BMP1D",
  	"LOP_SLA_BMP1D",
    "LOP_SLA_BMP2D",
    "LOP_SLA_T72BA",
  	"rhs_2b14_82mm_msv"
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
    "LOP_SLA_UAZ_AGS",                                                  // Ifrit (HMG)
    "LOP_SLA_UAZ_DshKM",                                                  // Ifrit (HMG)
    "LOP_SLA_UAZ_DshKM",                                                    // Qilin (AT)
    "LOP_SLA_UAZ_SPG",                                          // MSE-3 Marid
    "LOP_SLA_BTR60",
  	"LOP_SLA_BMP1D",									// BTR-K Kamysh
  	"rhs_2b14_82mm_msv"
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
    "LOP_SLA_UAZ_DshKM",
    "LOP_SLA_UAZ_SPG",
    "LOP_SLA_Ural_open",
    "LOP_SLA_Ural",
    "LOP_SLA_BTR70",
    "LOP_SLA_BTR70",
    "LOP_SLA_BTR70",
    "LOP_SLA_BTR70",
    "LOP_SLA_BMP1D",
    "LOP_SLA_BMP1D",
    "LOP_SLA_BMP1D",
    "LOP_SLA_BMP2D",
    "LOP_SLA_T72BA",
    "LOP_SLA_T72BA",
    "LOP_SLA_T72BA",
    "LOP_SLA_T72BB",
    "LOP_SLA_T72BB",
    "LOP_SLA_T72BB",
    "LOP_SLA_ZSU234"
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
    "LOP_SLA_UAZ_DshKM",                                                  // Ifrit (HMG)
    "LOP_SLA_UAZ_DshKM",                                                  // Ifrit (HMG)
    "LOP_SLA_UAZ_SPG",
    "LOP_SLA_Ural_open",                                            // Qilin (AT)
    "LOP_SLA_BTR70",                                          // MSE-3 Marid
    "LOP_SLA_BMP1D"                                         // BTR-K Kamysh
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
opfor_troup_transports = [
    "LOP_SLA_Ural",                                           // Tempest Transport
    "LOP_SLA_Ural_open",
    "LOP_SLA_BMP1D",
  	"LOP_SLA_BMP2D",
  	"LOP_SLA_BTR60",
    "LOP_SLA_BTR70",						// MSE-3 Marid
  	"LOP_SLA_Mi8MTV3_UPK23",
  	"LOP_SLA_Mi8MTV3_FAB"
  
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
		"LOP_SLA_Mi8MTV3_UPK23",
  	"LOP_SLA_Mi8MTV3_FAB"
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [];







