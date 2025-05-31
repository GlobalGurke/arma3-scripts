//_action = ["openArsenal","Arsenal","",{systemChat "TRIGGERED";},{true}] call ace_interact_menu_fnc_createAction;
//[gear, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
params ["_role"];
// GENERAL 
_gen = [general]; 
_attatchments = ["ACE_EntrenchingTool"];

_rifleman_weapons = ["vn_m16", "vn_m1_garand", "vn_m14", "vn_m14a1", "vn_m2carbine", "vn_m_fighting_knife_01", "vn_m_axe_01", "vn_m_machete_02", "vn_m_mk2_knife_01", "vn_mx991", "vn_mx991_red", "vn_m_shovel_01", "vn_m_typeivaxe_01", "vn_m16_20_mag", "vn_m16_20_t_mag", "vn_m16_40_t_mag", "vn_m1_garand_t_mag", "vn_m1_garand_mag", "vn_m14_mag", "vn_m14_t_mag", "vn_carbine_15_mag", "vn_carbine_15_t_mag", "vn_b_m16", "vn_bipod_m16", "vn_b_m14"];
_rifleman_backpacks = ["vn_b_pack_static_ammo_01","vn_b_pack_lw_01"];
_default_vests =["vn_b_vest_usarmy_02", "vn_b_vest_usarmy_03"];
_helmets = ["vn_b_helmet_m1_01_01", "vn_b_helmet_m1_14_01", "vn_b_helmet_m1_15_01", "vn_b_helmet_m1_16_01", "vn_b_helmet_m1_18_01", "vn_b_helmet_m1_19_01", "vn_b_helmet_m1_02_01", "vn_b_helmet_m1_20_01", "vn_b_helmet_m1_03_01", "vn_b_helmet_m1_05_01", "vn_b_helmet_m1_06_01", "vn_b_helmet_m1_07_01", "vn_b_helmet_m1_09_01", "vn_b_helmet_m1_04_01", "vn_b_helmet_m1_17_01", "vn_b_helmet_m1_08_01", "vn_b_helmet_m1_11_01"];
_camoCigs = ["murshun_cigs_cig0"];
_pistols = ["vn_m1911", "vn_mx991_m1911", "vn_m1911_mag"];
_grenades = ["vn_m61_grenade_mag", "vn_m18_white_mag"];
// ANTITANK 
_antitank_launchers = ["uns_m20_bazooka", "vn_m72", "uns_M30_smoke_mag", "uns_M28A2_mag"];
_antitank_backpacks = ["vn_b_pack_static_ammo_01","vn_b_pack_lw_01"];

// MACHINEGUNNER 
_mg_weapons = ["vn_m60", "vn_m60_shorty", "vn_m1918", "vn_m1918_t_mag", "vn_m1918_mag", "vn_m60_100_mag", "vn_bipod_m1918"];
_mg_vests = ["vn_b_vest_usarmy_06"];
_mg_backpacks = ["vn_b_pack_lw_02", "vn_b_pack_lw_05"];

// GRENADIER 
_grenadier_vest =["vn_b_vest_usarmy_05"];
_grenadier_weapons = ["vn_m79", "vn_m16_m203", "vn_m79_p", "vn_40mm_m381_he_mag", "vn_40mm_m406_he_mag", "vn_40mm_m397_ab_mag", "vn_40mm_m433_hedp_mag", "vn_40mm_m583_flare_w_mag", "vn_40mm_m661_flare_g_mag", "vn_40mm_m662_flare_r_mag", "vn_40mm_m695_flare_y_mag", "vn_40mm_m680_smoke_w_mag", "vn_40mm_m682_smoke_r_mag", "vn_40mm_m715_smoke_g_mag", "vn_40mm_m716_smoke_y_mag", "vn_40mm_m717_smoke_p_mag", "vn_40mm_m651_cs_mag", "vn_40mm_m576_buck_mag", "vn_m16_20_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"];
// EOD 
//_eod = ["ACE_M26_Clacker", "ACE_DefusalKit", "ACE_VMH3", "ATMine_Range_Mag", "tsp_breach_block_mag", "tsp_breach_package_mag", "tsp_breach_silhouette_mag", "tsp_breach_stick_mag", "tsp_breach_popper_auto_mag", "tsp_breach_popper_mag", "tsp_breach_linear_auto_mag", "tsp_breach_linear_mag", "SatchelCharge_Remote_Mag", "ClaymoreDirectionalMine_Remote_Mag"]; 

// JTAC 
_jtac = ["vn_m19_binocs_grey", "ACRE_PRC343", "ACRE_PRC77", "ACRE_VHF30108SPIKE", "ACRE_VHF30108", "ACRE_VHF30108MAST", "vn_b_pack_lw_06", "vn_b_pack_prc77_01", "ACE_artilleryTable", "ACE_RangeTable_82mm", "ACE_Altimeter", "ACE_MapTools", "ACE_RangeCard"]; 

//Engineer 
_engineer_backpacks = ["vn_b_pack_lw_04", "vn_b_pack_static_m1919a4_high_01", "vn_b_pack_static_m1919a4_low_01", "vn_b_pack_static_m1919a6_01", "vn_b_pack_static_m2_scoped_high_01", "vn_b_pack_static_m2_high_01", "vn_b_pack_static_m2_scoped_low_01", "vn_b_pack_static_m2_low_01", "vn_b_pack_static_m2_01", "vn_b_pack_static_m29_01", "vn_b_pack_static_m60_high_01", "vn_b_pack_static_m60_low_01"];  
_engineer_items = ["vn_mine_m112_remote_mag", "vn_mine_m18_range_mag", "vn_mine_m18_mag", "vn_mine_m18_fuze10_mag", "vn_mine_tripwire_m49_02_mag", "vn_mine_tripwire_m49_04_mag", "vn_mine_mortar_range_mag", "vn_mine_satchel_remote_02_mag", "ACE_DefusalKit", "ace_flags_black", "ace_flags_blue", "ace_flags_green", "ace_flags_orange", "ace_flags_purple", "ace_flags_red", "ace_flags_white", "ace_flags_yellow", "ACE_Fortify", "vn_b_item_toolkit", "vn_b_item_trapkit", "ACE_wirecutter"]; 
_engineer_weapons = ["vn_m1897", "vn_m72", "vn_m1897_fl_mag", "vn_m1897_buck_mag", "vn_izh54_mag", "vn_izh54_so_mag", "vn_m72_mag", "vn_b_m1897"];
// SL 
_sl_grenades = ["vn_m18_green_mag", "vn_m18_purple_mag", "vn_m18_red_mag", "vn_m18_white_mag", "vn_m18_yellow_mag", "vn_m61_grenade_mag"]; 


// AUTOMATIC RIFLEMAN 
//_medics = [medic1, medic2];
//_grenadiers = [grenadier1, grenadier2];
//_dmr = [dmr1, dmr2, dmr3];
//_squadleaders = [squadlead1, squadlead2];
Loadout = [];
if ("Schütze     " in _role) then {
	{
	Loadout = Loadout + [(headgear _x)] + [(goggles _x)] + (assignedItems _x) + (backpackitems _x)+ [(backpack _x)] + (uniformItems _x) + [(uniform _x)] + (vestItems _x) + [(vest _x)] + (magazines _x) + (weapons _x) + (primaryWeaponItems _x)+ (primaryWeaponMagazine _x) + (handgunMagazine _x) + (handgunItems _x) + (secondaryWeaponItems _x) + (secondaryWeaponMagazine _x);
	} forEach _gen;
	_tool = ["ACE_Fortify"];
	Loadout append _rifleman_weapons;
	Loadout append _rifleman_backpacks;
	Loadout append _attatchments;
	Loadout append _tool; 
	Loadout append _default_vests; 
	Loadout append _helmets; 
	Loadout append _camoCigs;
	
};
if ("Engineer" in _role) then {
	{
	Loadout = Loadout + [(headgear _x)] + [(goggles _x)] + (assignedItems _x) + (backpackitems _x)+ [(backpack _x)] + (uniformItems _x) + [(uniform _x)] + (vestItems _x) + [(vest _x)] + (magazines _x) + (weapons _x) + (primaryWeaponItems _x)+ (primaryWeaponMagazine _x) + (handgunMagazine _x) + (handgunItems _x) + (secondaryWeaponItems _x) + (secondaryWeaponMagazine _x);
	} forEach _gen;
	_tool = ["ACE_EntrenchingTool", "ACE_Fortify"]; 
	Loadout append _rifleman_weapons;
	Loadout append _rifleman_backpacks;
	Loadout append _attatchments;
	Loadout append _tool; 
	Loadout append _default_vests; 
	Loadout append _helmets; 
	Loadout append _camoCigs;
	Loadout append _engineer_backpacks; 
	Loadout append _engineer_items; 
	Loadout append _engineer_weapons; 
};

if ("Machinegunner" in _role || "MG Schütze" in _role) then {
{
	Loadout = Loadout + [(headgear _x)] + [(goggles _x)] + (assignedItems _x) + (backpackitems _x)+ [(backpack _x)] + (uniformItems _x) + [(uniform _x)] + (vestItems _x) + [(vest _x)] + (magazines _x) + (weapons _x) + (primaryWeaponItems _x)+ (primaryWeaponMagazine _x) + (handgunMagazine _x) + (handgunItems _x) + (secondaryWeaponItems _x) + (secondaryWeaponMagazine _x);
	} forEach _gen;
	Loadout append _mg_weapons;
	Loadout append _rifleman_backpacks;
	Loadout append _mg_backpacks; 
	Loadout append _attatchments;
	Loadout append _mg_vests; 
	Loadout append _helmets; 
	Loadout append _camoCigs;
};

if ("Anti Tank" in _role || "AT" in _role) then {
	{
	Loadout = Loadout + [(headgear _x)] + [(goggles _x)] + (assignedItems _x) + (backpackitems _x)+ [(backpack _x)] + (uniformItems _x) + [(uniform _x)] + (vestItems _x) + [(vest _x)] + (magazines _x) + (weapons _x) + (primaryWeaponItems _x)+ (primaryWeaponMagazine _x) + (handgunMagazine _x) + (handgunItems _x) + (secondaryWeaponItems _x) + (secondaryWeaponMagazine _x);
	} forEach _gen;
	Loadout append _rifleman_weapons;
	Loadout append _rifleman_backpacks;
	Loadout append _attatchments;
	Loadout append _default_vests; 
	Loadout append _antitank_launchers; 
	Loadout append _helmets; 
	Loadout append _camoCigs;
	Loadout append _antitank_backpacks; 
};

if ("JTAC" in _role ||"Telekommunikationsschütze" in _role) then {
	{
	Loadout = Loadout + [(headgear _x)] + [(goggles _x)] + (assignedItems _x) + (backpackitems _x)+ [(backpack _x)] + (uniformItems _x) + [(uniform _x)] + (vestItems _x) + [(vest _x)] + (magazines _x) + (weapons _x) + (primaryWeaponItems _x)+ (primaryWeaponMagazine _x) + (handgunMagazine _x) + (handgunItems _x) + (secondaryWeaponItems _x) + (secondaryWeaponMagazine _x);
	} forEach _gen;
	Loadout append _rifleman_weapons;
	Loadout append _attatchments;
	Loadout append _default_vests; 
	Loadout append _helmets; 
	Loadout append _jtac; 
	Loadout append _camoCigs;
};

if ("Fireteamleader" in _role || "FTL" in _role || "Truppführer" in _role ) then {
	{
	Loadout = Loadout + [(headgear _x)] + [(goggles _x)] + (assignedItems _x) + (backpackitems _x)+ [(backpack _x)] + (uniformItems _x) + [(uniform _x)] + (vestItems _x) + [(vest _x)] + (magazines _x) + (weapons _x) + (primaryWeaponItems _x)+ (primaryWeaponMagazine _x) + (handgunMagazine _x) + (handgunItems _x) + (secondaryWeaponItems _x) + (secondaryWeaponMagazine _x);
	} forEach _gen;
	Loadout append ["vn_m19_binocs_grey"]; 
	Loadout append _rifleman_backpacks;
	Loadout append _grenadier_weapons; 
	Loadout append _attatchments;
	Loadout append _grenadier_vest; 
	Loadout append _helmets; 
	Loadout append _camoCigs;	
	Loadout append _sl_grenades; 
	
};

if ("Flamethrower" in _role || "Flammenwerfer" in _role) then {
		{
	Loadout = Loadout + [(headgear _x)] + [(goggles _x)] + (assignedItems _x) + (backpackitems _x)+ [(backpack _x)] + (uniformItems _x) + [(uniform _x)] + (vestItems _x) + [(vest _x)] + (magazines _x) + (weapons _x) + (primaryWeaponItems _x)+ (primaryWeaponMagazine _x) + (handgunMagazine _x) + (handgunItems _x) + (secondaryWeaponItems _x) + (secondaryWeaponMagazine _x);
	} forEach _gen;
	Loadout append _rifleman_backpacks;
	Loadout append _rifleman_weapons; 
	Loadout append _default_vests; 
	Loadout append _attatchments;
	Loadout append ["M2_Flamethrower_01_F", "vn_p38s", "M2_Fuel_Tank", "vn_m10_mag", "M2_Flamethrower_Balloons_Pipe"]; 
	Loadout append _helmets; 
	Loadout append _camoCigs;	
};

// if ("DMR" in _role) then {
// 	{
// 	Loadout = Loadout + [(headgear _x)] + [(goggles _x)] + (assignedItems _x) + (backpackitems _x)+ [(backpack _x)] + (uniformItems _x) + [(uniform _x)] + (vestItems _x) + [(vest _x)] + (magazines _x) + (weapons _x) + (primaryWeaponItems _x)+ (primaryWeaponMagazine _x) + (handgunMagazine _x) + (handgunItems _x) + (secondaryWeaponItems _x) + (secondaryWeaponMagazine _x);
// 	} forEach _gen;
// 	_dmr_weapons = ["Binocular", "CUP_arifle_HK417_20", "rhs_weap_svdp", "rhs_weap_svds", "rhs_weap_svds_npz", "rhs_weap_svdp_npz", "rhs_weap_svdp_wd_npz", "rhs_weap_svdp_wd", "rhs_weap_vss", "rhs_weap_vss_grip", "rhs_weap_vss_grip_npz", "rhs_weap_vss_npz", "CUP_20Rnd_762x51_HK417_Camo_Desert", "CUP_20Rnd_762x51_HK417_Camo_Wood", "CUP_20Rnd_762x51_HK417", "CUP_20Rnd_TE1_Red_Tracer_762x51_HK417", "CUP_20Rnd_TE1_Green_Tracer_762x51_HK417", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_HK417", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N14", "rhs_10rnd_9x39mm_SP5", "rhs_10rnd_9x39mm_SP6", "rhs_20rnd_9x39mm_SP5", "rhs_20rnd_9x39mm_SP6", "CUP_bipod_Harris_1A2_L", "CUP_bipod_Harris_1A2_L_BLK", "CUP_bipod_VLTOR_Modpod_black", "CUP_optic_SB_3_12x50_PMII", "CUP_optic_LeupoldMk4_25x50_LRT", "CUP_optic_LeupoldMk4_20x40_LRT", "CUP_optic_LeupoldM3LR", "CUP_optic_Leupold_VX3", "CUP_optic_LeupoldMk4", "CUP_optic_SB_11_4x20_PM", "rhs_acc_1pn34", "rhs_acc_1pn93_1", "rhs_acc_pso1m21", "rhs_acc_pso1m2"];
// 	Loadout append _dmr_weapons;
// 	Loadout append _rifleman_backpacks;
// 	Loadout append _attatchments;
// 	Loadout append _default_vests; 
// 	Loadout append _helmets; 
// 	Loadout append _camoCigs;
// };

if ("Medic" in _role) then {
	{
	Loadout = Loadout + [(headgear _x)] + [(goggles _x)] + (assignedItems _x) + (backpackitems _x)+ [(backpack _x)] + (uniformItems _x) + [(uniform _x)] + (vestItems _x) + [(vest _x)] + (magazines _x) + (weapons _x) + (primaryWeaponItems _x)+ (primaryWeaponMagazine _x) + (handgunMagazine _x) + (handgunItems _x) + (secondaryWeaponItems _x) + (secondaryWeaponMagazine _x);
	} forEach _gen;
	_medic = ["kat_IV_16","kat_Caffeine","kat_Painkiller", "kat_aatKit", "kat_accuvac", "kat_AFAK", "kat_amiodarone", "kat_Armband_Doctor_Item", "kat_Armband_Kat_Item", "kat_Armband_Medic_Item", "kat_Armband_Red_Cross_Item", "kat_atropine", "Attachable_Helistretcher", "kat_crossPanel", "kat_BVM", "kat_plate", "kat_chestSeal", "kat_clamp", "kat_coag_sense", "kat_vacuum", "kat_EACA", "kat_oxygenTank_150_Empty", "kat_oxygenTank_300_Empty", "kat_etomidate", "kat_IO_FAST", "kat_fentanyl", "KAT_Empty_bloodIV_250", "KAT_Empty_bloodIV_500", "kat_flumazenil", "kat_gasmaskFilter", "kat_guedel", "kat_ultrasound", "kat_IFAK", "kat_epinephrineIV", "kat_ketamine", "kat_larynx", "kat_lidocaine", "kat_lorazepam", "kat_suction", "kat_MFAK", "kat_nalbuphine", "kat_naloxone", "kat_nasal", "kat_ncdKit", "kat_nitroglycerin", "kat_norepinephrine", "KNB_Notebook", "KNB_PanelGreen", "KNB_PanelRed", "KNB_PanelYellow", "kat_phenylephrine", "kat_phenylephrineAuto", "kat_pocketBVM", "kat_Pulseoximeter", "kat_reboa", "kat_retractor", "kat_scalpel", "kat_sealant", "kat_stethoscope", "kat_TXA", "ACE_quikclot", "ACE_packingBandage", "ACE_elasticBandage", "ACE_fieldDressing", "ACE_bodyBag", "ACE_morphine", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_salineIV", "ACE_salineIV_250", "ACE_salineIV_500", "ACE_splint", "ACE_surgicalKit", "ACE_suture", "ACE_tourniquet", "ACE_WaterBottle"];
	_grens = ["SmokeShellBlue", "SmokeShellRed", "SmokeShellGreen", "SmokeShellYellow", "JCA_HandFlare_Red", "JCA_HandFlare_Green", "JCA_SignalFlare_Red", "JCA_SignalFlare_Green"];
	Loadout append _medic; 
	Loadout append _grens; 
	Loadout append ["kat_IV_16", "kat_aatKit", "kat_accuvac", "kat_AFAK", "kat_amiodarone", "kat_Armband_Doctor_Item", "kat_Armband_Kat_Item", "kat_Armband_Medic_Item", "kat_Armband_Red_Cross_Item", "kat_atropine", "kat_helistretcher", "kat_basicDiagnostic", "kat_crossPanel", "kat_plate", "kat_BVM", "kat_chestSeal", "kat_clamp", "kat_coag_sense", "kat_vacuum", "kat_EACA", "kat_oxygenTank_150_Empty", "kat_oxygenTank_300_Empty", "kat_etomidate", "kat_IO_FAST", "kat_fentanyl", "KAT_Empty_bloodIV_250", "KAT_Empty_bloodIV_500", "kat_fluidWarmer", "kat_flumazenil", "kat_gasmaskFilter", "kat_guedel", "kat_handWarmer", "kat_ultrasound", "kat_IFAK", "kat_epinephrineIV", "KAT_ChemicalDetector", "KAT_Cavmin", "KAT_STS", "KAT_Ranger", "KAT_Katmin", "kat_ketamine", "kat_larynx", "kat_lidocaine", "kat_lorazepam", "kat_suction", "kat_MFAK", "kat_nalbuphine", "kat_naloxone", "kat_nasal", "kat_ncdKit", "kat_nitroglycerin", "kat_norepinephrine", "kat_phenylephrine", "kat_phenylephrineAuto", "kat_pocketBVM", "kat_Pulseoximeter", "kat_reboa", "kat_retractor", "kat_scalpel", "kat_sealant", "kat_stethoscope", "kat_TXA"]; 
	Loadout append _rifleman_weapons;
	Loadout append _rifleman_backpacks;
	Loadout append ["vn_b_pack_m5_01", "vn_b_pack_lw_07"]; 
	Loadout append _attatchments;
	Loadout append _default_vests; 
	Loadout append _helmets; 
	Loadout append _camoCigs;

};

if ("Gruppenführer" in _role) then {
	{
	Loadout = Loadout + [(headgear _x)] + [(goggles _x)] + (assignedItems _x) + (backpackitems _x)+ [(backpack _x)] + (uniformItems _x) + [(uniform _x)] + (vestItems _x) + [(vest _x)] + (magazines _x) + (weapons _x) + (primaryWeaponItems _x)+ (primaryWeaponMagazine _x) + (handgunMagazine _x) + (handgunItems _x) + (secondaryWeaponItems _x) + (secondaryWeaponMagazine _x);
	} forEach _gen;
	Loadout append _rifleman_weapons;
	Loadout append _rifleman_backpacks;
	Loadout append _attatchments;
	Loadout append _default_vests; 
	Loadout append _helmets; 
	Loadout append _camoCigs;
	Loadout append ["vn_m19_binocs_grey"]; 
	Loadout append _sl_grenades; 
};
if (_role == "Zugführung@Able 1" || _role == "Stelv. Zugführung@Able 1") then {
	{
	Loadout = Loadout + [(headgear _x)] + [(goggles _x)] + (assignedItems _x) + (backpackitems _x)+ [(backpack _x)] + (uniformItems _x) + [(uniform _x)] + (vestItems _x) + [(vest _x)] + (magazines _x) + (weapons _x) + (primaryWeaponItems _x)+ (primaryWeaponMagazine _x) + (handgunMagazine _x) + (handgunItems _x) + (secondaryWeaponItems _x) + (secondaryWeaponMagazine _x);
	} forEach _gen;
	Loadout append _rifleman_weapons;
	Loadout append _rifleman_backpacks;
	Loadout append _attatchments;
	Loadout append _default_vests; 
	Loadout append _helmets; 
	Loadout append _camoCigs;
	Loadout append _sl_grenades; 
};

if ("EOD" in _role) then {
	{
	Loadout = Loadout + [(headgear _x)] + [(goggles _x)] + (assignedItems _x) + (backpackitems _x)+ [(backpack _x)] + (uniformItems _x) + [(uniform _x)] + (vestItems _x) + [(vest _x)] + (magazines _x) + (weapons _x) + (primaryWeaponItems _x)+ (primaryWeaponMagazine _x) + (handgunMagazine _x) + (handgunItems _x) + (secondaryWeaponItems _x) + (secondaryWeaponMagazine _x);
	} forEach _gen;
	_jtac_backpacks = ["UK3CB_BAF_B_Bergen_DDPM_JTAC_A", "UK3CB_BAF_B_Bergen_DDPM_JTAC_H_A"]; 
	Loadout append _rifleman_weapons;
	Loadout append _rifleman_backpacks;
	Loadout append _attatchments;
	Loadout append _default_vests; 
	Loadout append _helmets; 
	Loadout append _eod; 
	Loadout append _camoCigs;
};
Loadout append _pistols; 
Loadout append _grenades;
Loadout append ["ACRE_PRC343"]; 
Loadout append ["kat_Armband_Doctor_Goggles", "kat_Armband_Kat_Goggles", "kat_Armband_Medic_Goggles", "kat_Armband_Red_Cross_Goggles", "G_Aviator", "G_Balaclava_blk", "G_Balaclava_combat", "G_Balaclava_Flecktarn", "G_Balaclava_lowprofile", "G_Balaclava_oli", "G_Balaclava_Skull1", "G_Balaclava_Tropentarn", "G_Bandanna_aviator", "vn_b_bandana_a", "G_Bandanna_beast", "vn_o_bandana_b", "vn_b_aviator", "vn_o_bandana_g", "vn_o_acc_goggles_01", "vn_b_acc_seal_01", "vn_b_acc_goggles_01", "vn_o_acc_goggles_02", "vn_b_scarf_01_03", "vn_o_scarf_01_04", "vn_o_scarf_01_03", "vn_o_scarf_01_02", "vn_b_scarf_01_01", "vn_o_scarf_01_01", "vn_b_acc_rag_02", "vn_b_acc_rag_01", "vn_b_spectacles", "vn_g_spectacles_02", "vn_g_spectacles_01", "vn_b_squares", "vn_b_squares_tinted", "vn_g_glasses_01", "vn_b_spectacles_tinted", "vn_b_acc_towel_01", "vn_b_acc_towel_02", "immersion_pops_pop0", "murshun_cigs_cig0"]; 
Loadout append ["vn_b_uniform_macv_04_01", "vn_b_uniform_macv_05_01", "vn_b_uniform_macv_06_01", "vn_b_uniform_macv_03_01", "vn_b_uniform_macv_02_01"]; 
Loadout = Loadout select {count _x > 0};
Loadout = Loadout arrayIntersect Loadout;
[gear, Loadout, false] call ace_arsenal_fnc_initBox;
systemChat format["Ausgewählte Rolle: %1", _role];