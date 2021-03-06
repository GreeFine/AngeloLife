﻿#include <macro.h>
/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_spawn_1","Gen.Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Gen.Pyrgos","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Gen.Ahtira","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_gsg9","GIGN","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_kilo","Gen.Agios","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_zulu","Base aerienne","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_bane","Avant poste","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
	case civilian:
	{
		if(license_civ_rebel && playerSide == civilian) then 
			{
                _return = 
				[
					["civ_spawn_training","Avant poste","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["reb_spawn_1","Camp_Rebelle","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
			};
			
			if(!license_civ_rebel && playerSide == civilian) then 
			{
                _return = 
				[
					["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
                    ["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
                    ["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
                    ["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
			};
			
		if(__GETC__(life_donator) == 3) then 
		{
			_return = _return + [
				["so_spawn_1","Söldner HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["don_spawn_1","Donator HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		
		if(__GETC__(life_donator) == 1) then
		{
			_return = _return + [
				["don_spawn_1","Donator HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		
		if(__GETC__(life_donator) == 2) then
		{
			_return = _return + [
				["don_spawn_1","Donator HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return set[count _return,[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
			} foreach life_houses;
		};	
	};
	
	case independent: {
		_return = [
			["medic_spawn_1","Hopital Kavala","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Hopital de campagne","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["adac_spawn_1","Depaniti West","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["adac_spawn_2","Depaniti Ost","\a3\ui_f\data\map\Markers\NATO\b_air.paa"]
		];
	};
};

_return;