#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	uiSleep 30;
};

if(!(str(player) in ["cop_1111"])) then {
	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		uiSleep 35;
	};
};

player setVariable["rank",(__GETC__(life_coplevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

//Introcam
[] spawn life_fnc_IntroCam;

//Skins und Backpacks f?r Cops
// CopLevel 1
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_Rangemaster"};
        player setObjectTextureGlobal [0,"skins\human\cop\Polo Gendarmerie.paa"];
        waitUntil {uniform player != "U_Rangemaster"};
    };
};
[] spawn
{
while {true} do
    {
        waitUntil {backpack player == "B_AssaultPack_cbr"};
        (unitBackpack player) setObjectTextureGlobal [0,"skins\human\cop\sac gendarmerie.paa"];
        waitUntil {backpack player != "B_AssaultPack_cbr"};
    };
};
// CopLevel 2
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_B_CombatUniform_mcam_vest"};
        player setObjectTextureGlobal [0,"skins\human\cop\Uniforme Grand Froid Gendarmerie.paa"];
        waitUntil {uniform player != "U_B_CombatUniform_mcam_vest"};
    };
};
// CopLevel 3+4
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_B_SpecopsUniform_sgg"};
        player setObjectTextureGlobal [0,"skins\human\cop\Uniforme Polaire Gendarme.paa"];
        waitUntil {uniform player != "U_B_SpecopsUniform_sgg"};
    };
};
// CopLevel 11
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_B_CombatUniform_mcam"};
        player setObjectTextureGlobal [0,"skins\human\cop\UniformeRAID fini2.paa"];
        waitUntil {uniform player != "U_B_CombatUniform_mcam"};
	};
};
[] spawn
{
while {true} do
    {
        waitUntil {backpack player == "B_Kitbag_sgg"};
        (unitBackpack player) setObjectTextureGlobal [0,"skins\human\cop\sac_alcapone_gign_3.paa"];
        waitUntil {backpack player != "B_Kitbag_sgg"};
    };
};
[] spawn
{
while {true} do
    {
        waitUntil {backpack player == "B_Bergen_blk"};
        (unitBackpack player) setObjectTextureGlobal [0,"skins\human\cop\sac gign inverser.paa"];
        waitUntil {backpack player != "B_Bergen_blk"};
    };
};
//End CLothes