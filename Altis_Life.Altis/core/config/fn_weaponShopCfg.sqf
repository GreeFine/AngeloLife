#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration file for the weapon shops.

	Return:
	String: Close the menu
	Array:
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.
_donartorPriceCoef = 9999;
if (__GETC__(life_donator) > 0) then { _donartorPriceCoef = 1-((__GETC__(life_donator)*10)/100); }; //maj
switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Vous n'ete pas policier!"};
			default
			{
				["Boutique Recrue",
					[
						["Rangefinder",nil,2000],
						["hgun_Rook40_snds_F","Taser avec silencieux",1000],
						["16Rnd_9x21_Mag","chargeur tazer",100]
					]
				];
			};
		};
	};

	case "cop_visier":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'ete pas policier !"};
			case (__GETC__(life_coplevel) < 1): {"vous n'ete pas recrue !"};
			default
			{
				["Magasin de police",
					[
						["ItemMap",nil,10],
						["ItemWatch",nil,10],
						["ItemCompass",nil,10],
						["ItemGPS",nil,10],
						["ToolKit",nil,1000],
						["Medikit",nil,1000],
						["NVGoggles_OPFOR",nil,10000],
						["Chemlight_red",nil,10],
						["Chemlight_yellow",nil,10],
						["Chemlight_green",nil,10],
						["Chemlight_blue",nil,10],
						["acc_flashlight",nil,100],
						["acc_pointer_IR",nil,100],
						["B_UavTerminal",nil,10000],
						["Rangefinder",nil,100],
						["optic_Holosight",nil,100],
						["optic_ACO_smg",nil,100],
						["optic_MRCO",nil,100],
						["optic_LRPS",nil,100],
						["optic_DMS",nil,100],
						["optic_NVS",nil,100],
						["optic_Arco",nil,100],
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_H",nil,1000],
						["muzzle_snds_B",nil,1000],
						["U_I_HeliPilotCoveralls","Combinaison RadioActive",50000],
                        ["H_PilotHelmetFighter_B","Casque RadioActif",25000]
					]
				];
			};
		};
	};

	case "adac_basic":
	{
		switch (true) do
		{
			case (playerSide != independent): {"Vous n'ete pas depanneur!"};
			case (__GETC__(life_mediclevel) < 2): {"vous n'ete pas depanneur!"};
			default {
				["Magasin de depanneur",
					[
						["ItemGPS",nil,10],
						["Binocular",nil,10],
						["ToolKit",nil,10],
						["FirstAidKit",nil,10],
						["Medikit",nil,10],
						["NVGoggles",nil,10],
						["Chemlight_red",nil,20],
						["Chemlight_yellow",nil,20],
						["Chemlight_green",nil,20],
						["Chemlight_blue",nil,20]
					]
				];
			};
		};
	};

	case "med_basic":
	{
		switch (true) do
		{
			case (playerSide != independent): {"vous n'ete pas medecin!"};
			case (__GETC__(life_mediclevel) < 1): {"vous n'ete pas medecin!"};
			default {
				["Magasin hopital",
					[
						["ItemGPS",nil,10],
						["Binocular",nil,10],
						["ToolKit",nil,10],
						["FirstAidKit",nil,10],
						["Medikit",nil,10],
						["NVGoggles",nil,10],
						["Chemlight_red",nil,20],
						["Chemlight_yellow",nil,20],
						["Chemlight_green",nil,20],
						["Chemlight_blue",nil,20]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Vous n'ete pas policier!"};
			case (__GETC__(life_coplevel) < 2): {"Vous n'ete pas gendarme!"};
			default
			{
				["Armurerie Gendarme",
					[
						["arifle_sdar_F","Rifle taser",10000],
						["hgun_Rook40_F","Tazer",500],
						["hgun_Rook40_snds_F","Taser avec silencieux",1000],
						["16Rnd_9x21_Mag","chargeur tazer",100],
						["20Rnd_556x45_UW_mag","Chargeur rifle",120],
						["SMG_02_ACO_F","Sting",15000],
						["30Rnd_9x21_Mag","9MM",200],
						["arifle_MXC_Black_F","Mxc",20000],
						["30Rnd_65x39_caseless_mag","6,5mm",300]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Vous n'ete pas policier!"};
			case (__GETC__(life_coplevel) < 3): {"Vous n'ete pas adjudant!"};
			default
			{
				["Armurerie Adjudant",
					[
						["arifle_MXC_Black_F",nil,20000],
						["arifle_MX_Black_F",nil,25000],
						["arifle_sdar_F","Rifle Taser",10000],
						["20Rnd_556x45_UW_mag","Chargeur rifle",120],
						["hgun_Rook40_snds_F","Taser avec silencieux",600],
						["16Rnd_9x21_Mag","chargeur tazer",100],
						["SMG_02_F",nil,1500],
						["30Rnd_65x39_caseless_mag","6,5mm ",300],
						["30Rnd_9x21_Mag","9mm",200]
					]
				];
			};
		};
	};

	case "cop_kommisar":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Vous n'ete pas policier"};
			case (__GETC__(life_coplevel) < 4): {"Vous n'ete pas adjudant-chef"};
			default
			{
				["Armurerie Adjudant-chef",
					[
						["SMG_02_F",nil,15000],
						["hgun_Rook40_snds_F","Taser avec silencieux",1000],
						["16Rnd_9x21_Mag","chargeur tazer",100],
						["arifle_sdar_F","Rifle Taser",10000],
						["20Rnd_556x45_UW_mag","Chargeur rifle",120],
						["arifle_MX_Black_F",nil,25000],
						["arifle_MXC_Black_F",nil,20000],
						["arifle_MXM_Black_F",nil,30000],
						["30Rnd_65x39_caseless_mag","6,5mm",300],
						["30Rnd_9x21_Mag",nil,200],
						["HandGrenade_Stone","Grenade Aveuglante",10],
						["SmokeShellOrange","Fumigene",300]
					]
				];
			};
		};
	};

	case "cop_sek":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Vous n'ete pas policier"};
			case (__GETC__(life_coplevel) < 5): {"Vous n'ete pas major"};
			default
			{
				["Armurerie Major",
					[
						["arifle_MXM_Black_F",nil,30000],
						["arifle_MX_Black_F",nil,25000],
						["arifle_MXC_Black_F",nil,20000],
						["arifle_MX_SW_Black_F",nil,40000],
						["SMG_02_F",nil,15000],
						["SmokeShellOrange","Fumigene",300],
						["SmokeShellBlue","Fumigene bleu",300],
						["HandGrenade_Stone","Grenade Aveuglante",350],
						["SmokeShellOrange","Fumigene orange",300],
						["30Rnd_65x39_caseless_mag","6,5mm",300],
						["30Rnd_9x21_Mag",nil,200],
						["100Rnd_65x39_caseless_mag",nil,350]
					]
				];
			};
		};
	};

	case "cop_gsg":
	{
		switch(true) do
		{
			case (playerSide !=west): {"vous n'ete pas policier"};
			case (__GETC__(life_coplevel) < 6): {"Vous n'ete pas Officier"};
			default
			{
				["GIGN",
					[
						["arifle_MXM_Black_F",nil,30000],
						["arifle_MX_Black_F",nil,25000],
						["arifle_MXC_Black_F",nil,20000],
						["arifle_MX_SW_Black_F",nil,40000],
						["SMG_02_F",nil,80000],
						["LMG_Mk200_F",nil,50000],
						["srifle_EBR_F",nil,40000],
						["srifle_LRR_F",nil,80000],
						["srifle_DMR_03_F",nil,35000],
						["7Rnd_408_Mag",nil,500],
						["SmokeShellOrange","Fumigene",300],
						["SmokeShellBlue","Fumigene lacrymogene",300],
						["HandGrenade_Stone","Grenade Aveuglante",350],
						["SmokeShellOrange","Fumigene orange",300],
						["30Rnd_65x39_caseless_mag","6,5mm",300],
						["20Rnd_762x51_Mag",nil,300],
						["30Rnd_9x21_Mag",nil,200],
						["100Rnd_65x39_caseless_mag",nil,350],
						["200Rnd_65x39_cased_Box",nil,500],
						["20Rnd_762x51_Mag",nil,400]
					]
				];
			};
		};
	};

	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"vous n'ete pas rebelle!"};
			case (!license_civ_rebel): {"vous n'avez pas la license rebelle!"};
			default
			{
				["Armurerie rebelle",
					[
						["srifle_GM6_F",nil,500000],
						["srifle_DMR_06_camo_F",nil,150000],
						["LMG_Zafir_F",nil,200000],
						["srifle_DMR_01_F",nil,100000],
						["arifle_MXM_F",nil,100000],
						["arifle_Mk20_F",nil,80000],
						["arifle_Katiba_F",nil,70000],
						["hgun_Pistol_heavy_02_F",nil,20000],
						["NVGoggles_OPFOR",nil,10000],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,150],
						["optic_LRPS",nil,100],
						["optic_ACO_grn",nil,500],
						["optic_Aco_smg",nil,500],
						["optic_Holosight",nil,360],
						["optic_MRCO",nil,100],
						["optic_Hamr",nil,105],
						["optic_NVS",nil,200],
						["optic_DMS",nil,400],
						["optic_NVS",nil,100],
						["SmokeShellGreen",nil,250],
						["5Rnd_127x108_Mag",nil,200],
						["20Rnd_762x51_Mag",nil,200],
						["150Rnd_762x54_Box",nil,150],
						["10Rnd_762x54_Mag",nil,125],
						["30Rnd_556x45_Stanag",nil,50],
						["30Rnd_65x39_caseless_green",nil,50],
						["30Rnd_65x39_caseless_mag_Tracer",nil,150],
						["SmokeShellGreen",nil,450],
						["5Rnd_127x108_Mag",nil,300],
						["20Rnd_762x51_Mag",nil,300],
						["150Rnd_762x54_Box",nil,250],
						["10Rnd_762x54_Mag",nil,225],
						["30Rnd_556x45_Stanag",nil,150],
						["30Rnd_65x39_caseless_green",nil,150],
						["6Rnd_45ACP_Cylinder",nil,100]
					]
				];
			};
		};
	};

	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'avez pas la licence d'arme"};
			case (!license_civ_gun): {"vous n'avez pas la licence d'arme!"};
			default
			{
				["Armurerie civile",
					[
						["hgun_P07_F",nil,15000],
						["hgun_ACPC2_F",nil,17500],
						["hgun_PDW2000_F",nil,50000],
						["arifle_Katiba_C_F",nil,80000],
						["30Rnd_65x39_caseless_green",nil,200],
						["optic_ACO_grn_smg",nil,2500],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};

	case "donator":
	{
		["Donateur Weapon Shop",
			[
				["hgun_P07_F",nil,5000 * _donartorPriceCoef],
				["srifle_GM6_F",nil,400000* _donartorPriceCoef],
				["hgun_PDW2000_F",nil,10000* _donartorPriceCoef],
				["arifle_TRG21_F",nil,25000* _donartorPriceCoef],
				["arifle_Mk20C_F",nil,40000* _donartorPriceCoef],
				["arifle_Mk20_F",nil,60000* _donartorPriceCoef],
				["srifle_DMR_01_F",nil,250000* _donartorPriceCoef],
				["srifle_EBR_F",nil,225000 * _donartorPriceCoef],
				["arifle_Katiba_F",nil,60000 * _donartorPriceCoef],
				["hgun_pistol_heavy_01_F",nil,12500 * _donartorPriceCoef],
				["hgun_ACPC2_F",nil,13500 * _donartorPriceCoef],
				["optic_ACO_grn",nil,7500 * _donartorPriceCoef],
				["optic_MRCO",nil,10000 * _donartorPriceCoef],
				["optic_LRPS",nil,50000 * _donartorPriceCoef],
				["optic_DMS",nil,25000 * _donartorPriceCoef],
				["Rangefinder",nil,15000 * _donartorPriceCoef],
				["SmokeShellGreen",nil,2500 * _donartorPriceCoef],
				["1Rnd_SmokeGreen_Grenade_shell",nil,5000 * _donartorPriceCoef],
				["muzzle_snds_L",nil,5000 * _donartorPriceCoef],
				["muzzle_snds_acp",nil,10000 * _donartorPriceCoef],
				["muzzle_snds_M",nil,30000 * _donartorPriceCoef],
				["muzzle_snds_H",nil,20000 * _donartorPriceCoef],
				["NVGoggles_INDEP",nil,25000 * _donartorPriceCoef],
				["16Rnd_9x21_Mag",nil,25 * _donartorPriceCoef],
				["30Rnd_65x39_caseless_green",nil,750 * _donartorPriceCoef],
				["10Rnd_762x51_Mag",nil,100 * _donartorPriceCoef],
				["20Rnd_762x51_Mag",nil,750 * _donartorPriceCoef],
				["30Rnd_9x21_Mag",nil,75 * _donartorPriceCoef],
				["11Rnd_45ACP_Mag",nil,85 * _donartorPriceCoef],
				["9Rnd_45ACP_Mag",nil,100 * _donartorPriceCoef],
				["30Rnd_556x45_Stanag",nil,125 * _donartorPriceCoef],
				["30Rnd_9x21_Mag",nil,75 * _donartorPriceCoef]
			]
		];
	};

	case "genstore":
	{
		["Brico depot",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ItemMap",nil,50],
				["ItemCompass",nil,50],
				["ItemWatch",nil,50],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};

	case "uranium":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"Vous n'ete pas civile"};
            case (!license_civ_uranium): {"vous n'avez pas la license d'uranium"};
            default
            {
                ["Acheteur d'uranium",
                    [
                        ["ToolKit",nil,200],
                        ["FirstAidKit",nil,100],
                        ["U_I_HeliPilotCoveralls","Combinaison RadioActive",50000],
                        ["H_PilotHelmetFighter_B","Casque RadioActif",25000]
                    ]
                ];
            };
        };
    };
};
