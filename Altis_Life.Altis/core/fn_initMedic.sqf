#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the medic..
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((__GETC__(life_medicLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	uiSleep 35;
};
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

[] spawn life_fnc_IntroCam;

// Uniformen Texturen START
//medicLevel 2
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_B_HeliPilotCoveralls"};
        player setObjectTextureGlobal [0,"skins\human\medic\adac_uniform.jpg"];
        waitUntil {uniform player != "U_B_HeliPilotCoveralls"};
    };
};
//medicLevel 1
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_Rangemaster"};
        player setObjectTextureGlobal [0,"skins\human\medic\Polo Pompiers.paa"];
        waitUntil {uniform player != "U_Rangemaster"};
    };
};
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_O_OfficerUniform_ocamo"};
        player setObjectTextureGlobal [0,"skins\human\medic\SapeursPompiers.paa"];
        waitUntil {uniform player != "U_O_OfficerUniform_ocamo"};
    };
};
// medicLevel 2
[] spawn
{
while {true} do
    {
        waitUntil {backpack player == "B_Kitbag_cbr"};
        (unitBackpack player) setObjectTextureGlobal [0,"skins\human\medic\adac_backpack.jpg"];
        waitUntil {backpack player != "B_Kitbag_cbr"};
    };
};
// medicLevel 1
[] spawn
{
while {true} do
    {
        waitUntil {backpack player == "B_Kitbag_sgg"};
        (unitBackpack player) setObjectTextureGlobal [0,"skins\human\medic\medic_backpack.jpg"];
        waitUntil {backpack player != "B_Kitbag_sgg"};
    };
};
[] spawn
{
while {true} do
    {
        waitUntil {backpack player == "B_Kitbag_cbr"};
        (unitBackpack player) setObjectTextureGlobal [0,"skins\human\medic\medic_backpackfini.paa"];
        waitUntil {backpack player != "B_Kitbag_cbr"};
    };
};
// medicLevel 1
if((__GETC__(life_medicLevel)) == 1) exitWith {
	[] call life_fnc_resetMedic;
	license_med_air = true;
};
if((__GETC__(life_medicLevel)) == 2) exitWith {
	[] call life_fnc_resetMedic;
	[] execVM "IgiLoad\IgiLoadInit.sqf";
	license_med_adac = true;
	license_med_air = true;
};