/*
    Needed Mods:
    - None

    Optional Mods:
    - None
*/

/* Classnames of the guerilla faction which is friendly or hostile, depending on the civil reputation
Standard loadout of the units will be replaced with a scripted one, which depends on the guerilla strength, after spawn */
KP_liberation_guerilla_units = [
	"UK3CB_MDF_I_RIF_1",
	"UK3CB_MDF_I_DEM",
	"UK3CB_MDF_I_MK",
	"UK3CB_MDF_I_TL"
];

// Armed vehicles
KP_liberation_guerilla_vehicles = [
	"UK3CB_MDF_I_MB4WD_LMG",
	"UK3CB_MDF_I_MB4WD_AT",
	"UK3CB_MDF_I_Offroad_HMG",
	"UK3CB_MDF_I_MTVR_Zu23"
];

/* Guerilla Equipment
There are 3 tiers for every category. If the strength of the guerillas will increase, they'll have higher tier equipment. */

/* Weapons - You've to add the weapons as array like
["Weaponclassname","Magazineclassname","magazine amount","optic","tripod"]
You can leave optic and tripod empty with "" */
KP_liberation_guerilla_weapons_1 = [
    ["rhs_weap_ak74n_npz","rhs_30Rnd_545x39_AK_green",8,"",""],
    ["rhs_weap_ak74n_npz","rhs_30Rnd_545x39_AK_green",8,"",""],
    ["rhs_weap_aks74","rhs_30Rnd_545x39_AK_green",8,"",""],
    ["rhs_weap_aks74","rhs_30Rnd_545x39_AK_green",8,"",""],
    ["rhs_weap_rpk74m","rhs_100Rnd_762x54mmR_green",3,"",""],
    ["rhs_weap_svdp_wd","ACE_10Rnd_762x54_Tracer_mag",8,"rhs_acc_pso1m2",""]
];

KP_liberation_guerilla_weapons_2 = [
    ["rhs_weap_ak74n_npz","rhs_30Rnd_545x39_AK_green",8,"optic_aco_grn",""],
    ["rhs_weap_ak74n_npz","rhs_30Rnd_545x39_AK_green",8,"optic_aco_grn",""],
    ["rhs_weap_ak74n_npz","rhs_30Rnd_545x39_AK_green",8,"optic_aco",""],
    ["rhs_weap_ak74n_npz","rhs_30Rnd_545x39_AK_green",8,"optic_aco",""],
    ["rhs_weap_rpk74m_npz","rhs_100Rnd_762x54mmR_green",5,"optic_arco_blk_f",""],
    ["rhs_weap_rpk74m_npz","rhs_100Rnd_762x54mmR_green",5,"optic_arco_blk_f",""],
    ["rhs_weap_svdp_npz","ACE_10Rnd_762x54_Tracer_mag",8,"rhsusf_acc_nxs_3515x50_md",""],
    ["rhs_weap_t5000","rhs_5Rnd_338lapua_t5000",8,"rhsusf_acc_leupoldmk4_2_mrds","rhs_acc_harris_swivel"]
];

KP_liberation_guerilla_weapons_3 = [
    ["rhs_weap_ak74n_npz","rhs_30Rnd_545x39_AK_green",8,"optic_aco_grn",""],
    ["rhs_weap_ak74n_npz","rhs_30Rnd_545x39_AK_green",8,"optic_aco_grn",""],
    ["rhs_weap_ak74n_npz","rhs_30Rnd_545x39_AK_green",8,"optic_aco",""],
    ["rhs_weap_ak74n_npz","rhs_30Rnd_545x39_AK_green",8,"optic_aco",""],
    ["rhs_weap_rpk74m_npz","rhs_100Rnd_762x54mmR_green",5,"optic_arco_blk_f",""],
    ["rhs_weap_rpk74m_npz","rhs_100Rnd_762x54mmR_green",5,"optic_arco_blk_f",""],
    ["rhs_weap_pkp","rhs_100Rnd_762x54mmR_green",5,"rhs_acc_pkas",""],
    ["rhs_weap_pkp","rhs_100Rnd_762x54mmR_green",5,"rhs_acc_pkas",""],
    ["rhs_weap_svdp_npz","ACE_10Rnd_762x54_Tracer_mag",8,"rhsusf_acc_nxs_3515x50_md",""],
    ["rhs_weap_t5000","rhs_5Rnd_338lapua_t5000",8,"rhsusf_acc_leupoldmk4_2_mrds","rhs_acc_harris_swivel"]
];

// Uniforms
KP_liberation_guerilla_uniforms_1 = [
    "UK3CB_MDF_I_U_CombatUniform_01_LIZ",
    "UK3CB_MDF_B_U_CombatUniform_02_LIZ_OD",
    "UK3CB_MDF_B_U_Crew_Uniform_01"
];

KP_liberation_guerilla_uniforms_2 = [
    "UK3CB_MDF_I_U_CombatUniform_01_LIZ",
    "UK3CB_MDF_B_U_CombatUniform_02_LIZ_OD",
    "UK3CB_MDF_B_U_Crew_Uniform_01"
];

KP_liberation_guerilla_uniforms_3 = [
    "UK3CB_MDF_I_U_CombatUniform_01_LIZ",
    "UK3CB_MDF_B_U_CombatUniform_02_LIZ_OD",
    "UK3CB_MDF_B_U_Crew_Uniform_01"
];

// Vests
KP_liberation_guerilla_vests_1 = [
    "UK3CB_MDF_I_V_TacVest_LIZ",
    "UK3CB_ADA_B_V_TacVest_DPM",
    "UK3CB_ADA_B_V_TacVest_WDL",
    "rhsgref_chestrig",
    "rhsgref_otv_khaki"
];

KP_liberation_guerilla_vests_2 = [
    "UK3CB_MDF_I_V_TacVest_LIZ",
    "UK3CB_ADA_B_V_TacVest_DPM",
    "UK3CB_ADA_B_V_TacVest_WDL",
    "rhsgref_chestrig",
    "rhsgref_otv_khaki"
];

KP_liberation_guerilla_vests_3 = [
    "UK3CB_MDF_I_V_TacVest_LIZ",
    "UK3CB_ADA_B_V_TacVest_DPM",
    "UK3CB_ADA_B_V_TacVest_WDL",
    "rhsgref_chestrig",
    "rhsgref_otv_khaki"
];

// Headgear
KP_liberation_guerilla_headgear_1 = [
    "UK3CB_MDF_I_H_M1",
    "UK3CB_MDF_I_H_M1",
    "UK3CB_MDF_I_H_M1",
    "UK3CB_MDF_B_H_M1_ALT",
    "UK3CB_MDF_B_H_M1_ALT",
    "UK3CB_MDF_B_H_M1_ALT",
    "UK3CB_ADA_I_H_M1_DPP",
    "UK3CB_ADA_I_H_M1_DPP",
    "UK3CB_ADA_I_H_M1_DPP",
    "UK3CB_CW_US_B_LATE_H_PASGT_01_WDL",
    "UK3CB_CW_US_B_LATE_H_PASGT_01_WDL",
    "UK3CB_CW_US_B_LATE_H_PASGT_02_WDL",
    "UK3CB_CW_US_B_LATE_H_PASGT_02_WDL",
    "UK3CB_ADA_B_H_6b27m_ml_OLI",
    "UK3CB_ADA_B_H_6b27m_OLI",
    "UK3CB_ANA_B_H_6b27m_WDL",
    "UK3CB_ANA_B_H_6b27m_WDL",
    "UK3CB_ANA_B_H_6b27m_WDL"
];

KP_liberation_guerilla_headgear_2 = [
    "UK3CB_MDF_I_H_M1",
    "UK3CB_MDF_I_H_M1",
    "UK3CB_MDF_I_H_M1",
    "UK3CB_MDF_B_H_M1_ALT",
    "UK3CB_MDF_B_H_M1_ALT",
    "UK3CB_MDF_B_H_M1_ALT",
    "UK3CB_ADA_I_H_M1_DPP",
    "UK3CB_ADA_I_H_M1_DPP",
    "UK3CB_ADA_I_H_M1_DPP",
    "UK3CB_CW_US_B_LATE_H_PASGT_01_WDL",
    "UK3CB_CW_US_B_LATE_H_PASGT_01_WDL",
    "UK3CB_CW_US_B_LATE_H_PASGT_02_WDL",
    "UK3CB_CW_US_B_LATE_H_PASGT_02_WDL",
    "UK3CB_ADA_B_H_6b27m_ml_OLI",
    "UK3CB_ADA_B_H_6b27m_OLI",
    "UK3CB_ANA_B_H_6b27m_WDL",
    "UK3CB_ANA_B_H_6b27m_WDL",
    "UK3CB_ANA_B_H_6b27m_WDL"
];

KP_liberation_guerilla_headgear_3 = [
    "UK3CB_MDF_I_H_M1",
    "UK3CB_MDF_I_H_M1",
    "UK3CB_MDF_I_H_M1",
    "UK3CB_MDF_B_H_M1_ALT",
    "UK3CB_MDF_B_H_M1_ALT",
    "UK3CB_MDF_B_H_M1_ALT",
    "UK3CB_ADA_I_H_M1_DPP",
    "UK3CB_ADA_I_H_M1_DPP",
    "UK3CB_ADA_I_H_M1_DPP",
    "UK3CB_CW_US_B_LATE_H_PASGT_01_WDL",
    "UK3CB_CW_US_B_LATE_H_PASGT_01_WDL",
    "UK3CB_CW_US_B_LATE_H_PASGT_02_WDL",
    "UK3CB_CW_US_B_LATE_H_PASGT_02_WDL",
    "UK3CB_ADA_B_H_6b27m_ml_OLI",
    "UK3CB_ADA_B_H_6b27m_OLI",
    "UK3CB_ANA_B_H_6b27m_WDL",
    "UK3CB_ANA_B_H_6b27m_WDL",
    "UK3CB_ANA_B_H_6b27m_WDL"
];

// Facegear. Applies for tier 2 and 3.
KP_liberation_guerilla_facegear = [
    "",
    "",
    "",
    "UK3CB_G_Neck_Shemag_Oli",
    "UK3CB_G_Neck_Shemag_KLR_tan",
    "BWA3_G_Combat_black",
    "murshun_cigs_cig0",
    "rhs_scarf",
    "rhsusf_shemagh_grn",
    "rhsusf_shemagh2_grn"
];
