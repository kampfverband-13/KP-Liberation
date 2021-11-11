/*
    Needed Mods:
    - None

    Optional Mods:
    - BWMod
    - RHSUSAF
    - F-15C
    - F/A-18
    - CUP Weapons
    - CUP Vehicles
    - USAF Main Pack
    - USAF Fighters Pack
    - USAF Utility Pack
*/

/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
FOB_typename = "Land_Cargo_HQ_V3_F";                                    // This is the main FOB HQ building.
FOB_box_typename = "B_Slingload_01_Cargo_F";                            // This is the FOB as a container.
FOB_truck_typename = "B_Truck_01_box_F";                                // This is the FOB as a vehicle.
Arsenal_typename = "B_CargoNet_01_ammo_F";                                   // This is the virtual arsenal as portable supply crates.
Respawn_truck_typename = "B_Truck_01_medical_F";                        // This is the mobile respawn (and medical) truck.
huron_typename = "RHS_CH_47F_cargo";                       // This is Spartan 01, a multipurpose mobile respawn as a helicopter.
crewman_classname = "UK3CB_BAF_Crewman_MTP";                                         // This defines the crew for vehicles.
pilot_classname = "UK3CB_BAF_HeliPilot_RAF_MTP";                                      // This defines the pilot for helicopters.
KP_liberation_little_bird_classname = "UK3CB_BAF_Merlin_HC3_18_MTP";              // These are the little birds which spawn on the Freedom or at Chimera base.
KP_liberation_boat_classname = "UK3CB_BAF_RHIB_HMG_MTP";                 // These are the boats which spawn at the stern of the Freedom.
KP_liberation_truck_classname = "B_Truck_01_transport_F";               // These are the trucks which are used in the logistic convoy system.
KP_liberation_small_storage_building = "ContainmentArea_02_sand_F";     // A small storage area for resources.
KP_liberation_large_storage_building = "ContainmentArea_01_sand_F";     // A large storage area for resources.
KP_liberation_recycle_building = "Land_RepairDepot_01_tan_F";           // The building defined to unlock FOB recycling functionality.
KP_liberation_air_vehicle_building = "Land_MobileRadar_01_radar_F";             // The building defined to unlock FOB air vehicle functionality.
KP_liberation_heli_slot_building = "Land_HelipadSquare_F";              // The helipad used to increase the GLOBAL rotary-wing cap.
KP_liberation_plane_slot_building = "Land_TentHangar_V1_F";             // The hangar used to increase the GLOBAL fixed-wing cap.
KP_liberation_supply_crate = "CargoNet_01_box_F";                       // This defines the supply crates, as in resources.
KP_liberation_ammo_crate = "B_CargoNet_01_ammo_F";                      // This defines the ammunition crates.
KP_liberation_fuel_crate = "CargoNet_01_barrels_F";                     // This defines the fuel crates.

/*
    --- Friendly classnames ---
    Each array below represents one of the 7 pages within the build menu.
    Format: ["vehicle_classname",supplies,ammunition,fuel],
    Example: ["B_APC_Tracked_01_AA_F",300,150,150],
    The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150 ammunition and 150 fuel to build.
    IMPORTANT: The last element inside each array must have no comma at the end!
*/
infantry_units = [
	["rhsusf_socom_marsoc_sarc",5,5,5],
	["BWA3_Medic_Fleck",5,5,5],
	["rhs_msv_emr_medic",5,5,5]
];


light_vehicles = [
    ["B_Quadbike_01_F",25,0,25],
	
    ["B_Boat_Transport_01_F",50,0,50],
    ["rhs_bmk_t",50,0,50],
    ["I_C_Boat_Transport_02_F",100,0,100],
    ["UK3CB_BAF_RHIB_HMG_MTP",100,100,100],
    ["B_Boat_Armed_01_minigun_F",150,150,150],
	["rhsusf_mkvsoc",150,150,150],
	
    ["rhs_kamaz5350_open_msv",100,0,100],
	["rhsusf_M977A4_BKIT_M2_usarmy_wd",200,100,200],
	["rhsusf_M977A4_BKIT_M2_usarmy_d",200,100,200],
	
    ["UK3CB_BAF_LandRover_Soft_FFR_Green_B_DPMW",100,0,100],
    ["UK3CB_BAF_LandRover_Soft_FFR_Sand_A_MTP_RM",100,0,100],
    ["rhsusf_m1151_usmc_wd",150,0,150],
    ["rhsusf_m1151_usmc_d",150,0,150],
    ["BWA3_Eagle_Fleck",150,0,150],
    ["BWA3_Eagle_Tropen",150,0,150],
    ["rhs_tigr_3camo_msv",170,0,170],
	
    ["UK3CB_BAF_Husky_Passenger_HMG_Green_DPMW",170,120,170],
    ["UK3CB_BAF_Husky_Passenger_HMG_Sand_MTP",170,120,170],
    ["UK3CB_BAF_Coyote_Passenger_L111A1_W_DPMW",170,150,170],
    ["UK3CB_BAF_Coyote_Passenger_L111A1_D_MTP",170,150,170],
    ["UK3CB_BAF_Panther_GPMG_Green_A_DPMW",170,170,170],
    ["UK3CB_BAF_Panther_GPMG_Sand_A_MTP",170,170,170],
    ["rhsusf_m1045_w_s",150,500,150],
	
    ["rhsusf_M1237_M2_usarmy_wd",350,100,350],
    ["rhsusf_M1237_M2_usarmy_d",350,100,350],
    ["BWA3_Dingo2_FLW200_M2_Fleck",350,250,350],
    ["BWA3_Dingo2_FLW200_M2_Tropen",350,250,350]
];


heavy_vehicles = [
    ["rhs_btr80a_msv",450,450,450],
    ["UK3CB_BAF_FV432_Mk3_RWS_Green_DPMW",450,100,450],
    ["UK3CB_BAF_FV432_Mk3_RWS_Sand_MTP",450,100,450],
    ["rhsusf_stryker_m1126_m2_wd",600,250,600],
	["rhsusf_stryker_m1134_wd",600,900,600],
    ["I_LT_01_cannon_F",450,500,450],
    ["I_LT_01_AT_F",450,900,450],
    ["I_LT_01_AA_F",450,900,450],
	
    ["rhs_bmp2d_msv",900,1200,900],
    ["BWA3_Puma_Fleck",1200,1500,1200],
    ["BWA3_Puma_Tropen",1200,1500,1200],
    ["RHS_M2A3_wd",1200,1200,1200],
    ["RHS_M2A3",1200,1200,1200],
    ["rhs_zsu234_aa",900,1100,900],
    ["RHS_M6_wd",1200,1100,1100],
    ["RHS_M6",1200,1100,1100],
	
    ["rhs_t90a_tv",2000,1800,2000],
    ["BWA3_Leopard2_Fleck",2000,2000,2000],
    ["BWA3_Leopard2_Tropen",2000,2000,2000],
    ["rhsusf_m1a2sep1tuskiiwd_usarmy",2000,2000,2000],
    ["rhsusf_m1a2sep1tuskiid_usarmy",2000,2000,2000],
	
    ["RHS_M119_WD",4000,4000,2000],
    ["rhs_D30_msv",4000,4500,2000],
    ["rhsusf_m109_usarmy",5500,5000,4000],
    ["rhsusf_m109d_usarmy",5500,5000,4000]
];


air_vehicles = [
    ["RHS_MELB_MH6M",500,0,500],
    ["rhs_ka60_grey",500,0,500],
    ["RHS_UH1Y_UNARMED",600,0,600],
    ["RHS_Mi8AMT_vdv",600,0,600],
	
    ["RHS_MELB_AH6M",600,1000,600],
    ["RHS_UH1Y",600,1000,600],
	
    ["RHS_UH60M",700,300,700],
    ["RHS_CH_47F",1400,300,1800],
    ["UK3CB_BAF_Merlin_HC3_CSAR_DPMW_RM",1200,500,1200],
    ["rhsusf_CH53e_USMC_cargo",2000,0,2000],
	
    ["UK3CB_BAF_Wildcat_AH1_CAS_6C_DPMW_RM",1200,1600,1200],
    ["RHS_UH60M_ESSS",1600,2000,1600],
    ["RHS_Mi8MTV3_heavy_vdv",1400,1600,1400],
	
    ["RHS_Mi24P_vdv",2400,1600,2400],
    ["BWA3_Tiger_RMK_Heavy",2000,2000,2000],
    ["RHS_AH1Z_wd",2000,2300,2000],
    ["RHS_AH64D_wd",2000,2600,2000],
	
    ["RHS_C130J",2000,0,2000],
	
    ["rhsusf_f22",3000,2800,2800],
    ["rhs_mig29sm_vvsc",2800,3000,2800],
    ["I_Plane_Fighter_03_dynamicLoadout_F",2800,2800,2800],
	
    ["RHS_Su25SM_vvsc",3000,3600,3000],
    ["B_Plane_CAS_01_dynamicLoadout_F",3000,4000,3000],
    ["RHS_A10",3000,4000,3000]
];


static_vehicles = [
    ["BWA3_MRS120_Fleck",150,400,0]
];


buildings = [
    ["Flag_UNO_F",0,0,0],
    ["Flag_NATO_F",0,0,0],
	["BWA3_Flag_Germany",0,0,0],
    ["rhs_Flag_Russia_F",0,0,0],
    ["Flag_UK_F",0,0,0],
    ["Flag_US_F",0,0,0],
    ["Land_PortableLight_single_F",0,0,0],
    ["Land_Campfire_F",0,0,0],
    ["Land_CampingChair_V1_F",0,0,0],
    ["Land_CampingTable_F",0,0,0],
    ["Land_HBarrier_01_wall_6_green_F",0,0,0],
    ["Land_HBarrier_01_line_3_green_F",0,0,0],
    ["Land_HBarrierWall6_F",0,0,0],
    ["Land_HBarrier_3_F",0,0,0],
    ["Land_fort_bagfence_long",0,0,0],
    ["PortableHelipadLight_01_blue_F",0,0,0],
    ["PortableHelipadLight_01_green_F",0,0,0],
    ["Land_ClutterCutter_large_F",0,0,0],
    ["UK3CB_BAF_Vehicles_Logistics_Point",0,0,0],
	["Land_MapBoard_F",0,0,0],
	["B_Slingload_01_Medevac_F",400,0,0],
    [KP_liberation_small_storage_building,0,0,0],
    [KP_liberation_large_storage_building,0,0,0],
    [KP_liberation_recycle_building,250,250,250],
    [KP_liberation_air_vehicle_building,1000,0,0],
    [KP_liberation_heli_slot_building,250,0,0],
    ["Land_HelipadCivil_F",0,0,0],  
    [KP_liberation_plane_slot_building,500,0,0]
];



/* 
	[Arsenal_typename,100,200,0],
	[Respawn_truck_typename,200,0,100],
*/
support_vehicles = [
    [FOB_box_typename,1000,1000,1000],
    [FOB_truck_typename,1000,1000,1000],
    ["ACE_Box_82mm_Mo_HE",0,0,0],
    ["ACE_Box_82mm_Mo_Smoke",0,0,0],
    ["ACE_Box_82mm_Mo_Illum",0,0,0],
    ["B_Slingload_01_Fuel_F",250,0,1000],
    ["B_Slingload_01_Ammo_F",250,1000,0],
    ["rhsusf_M977A4_AMMO_BKIT_usarmy_wd",150,1000,150],
    ["rhsusf_M977A4_AMMO_BKIT_usarmy_d",150,1000,150],
    ["rhsusf_M978A4_usarmy_wd",150,0,300],
    ["rhsusf_M978A4_usarmy_d",150,0,300],
    ["rhsusf_M1078A1P2_WD_flatbed_fmtv_usarmy",100,0,100],
    ["rhsusf_M1078A1P2_D_flatbed_fmtv_usarmy",100,0,100],
	["Box_NATO_Equip_F",0,0,0],
    ["ACE_medicalSupplyCrate_advanced",0,0,0],
    ["ACE_Track",0,0,0],
    ["ACE_Wheel",0,0,0]
];

/*
    --- Squads ---
    Pre-made squads for the commander build menu.
    These shouldn't exceed 10 members.
*/

// Light infantry squad.
blufor_squad_inf_light = [
	"rhsusf_usmc_marpat_wd_rifleman_m4",
	"rhsusf_socom_marsoc_sarc",
	"rhsusf_usmc_marpat_wd_rifleman",
	"rhsusf_usmc_marpat_wd_grenadier",
	"rhsusf_usmc_marpat_wd_grenadier",
	"rhsusf_usmc_marpat_wd_autorifleman_m249",
	"rhsusf_usmc_marpat_wd_sniper_m110",
	"rhsusf_socom_marsoc_sarc"
];

// Heavy infantry squad.
blufor_squad_inf = [
    "rhsusf_usmc_marpat_wd_rifleman",
    "rhsusf_usmc_marpat_wd_grenadier",
    "rhsusf_usmc_marpat_wd_autorifleman_m249",
    "rhsusf_socom_marsoc_sarc",
    "rhsusf_usmc_marpat_wd_machinegunner",
    "rhsusf_usmc_marpat_wd_smaw",
    "rhsusf_usmc_marpat_wd_stinger",
    "rhsusf_usmc_marpat_wd_sniper", 
    "rhsusf_socom_marsoc_sarc"
];

// AT specialists squad.
blufor_squad_at = [
    "rhsusf_usmc_marpat_wd_smaw",
    "rhsusf_socom_marsoc_sarc",
    "rhsusf_usmc_marpat_wd_smaw",
    "rhsusf_socom_marsoc_sarc"
];

// AA specialists squad.
blufor_squad_aa = [
    "rhsusf_usmc_marpat_wd_stinger",
    "rhsusf_socom_marsoc_sarc",
    "rhsusf_usmc_marpat_wd_stinger",
    "rhsusf_socom_marsoc_sarc"
];

// Force recon squad.
blufor_squad_recon = [
    "rhsusf_usmc_marpat_wd_sniper_m110",
    "rhsusf_usmc_marpat_wd_sniper",
    "rhsusf_socom_marsoc_sarc"
];

// Paratroopers squad (The units of this squad will automatically get parachutes on build)
blufor_squad_para = [
	"rhsusf_usmc_marpat_wd_grenadier",
	"rhsusf_usmc_marpat_wd_rifleman_m4",
	"rhsusf_usmc_marpat_wd_rifleman",
	"rhsusf_socom_marsoc_sarc",
	"rhsusf_usmc_marpat_wd_rifleman",
	"rhsusf_usmc_marpat_wd_grenadier",
	"rhsusf_usmc_marpat_wd_autorifleman_m249",
	"rhsusf_usmc_marpat_wd_sniper_m110",
	"rhsusf_socom_marsoc_sarc"
];


/*
    --- Elite vehicles ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/
elite_vehicles = [];
