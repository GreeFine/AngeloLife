#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
_donartorPriceCoef = 1-((__GETC__(life_donator)*10)/100);
switch (_shop) do
{
	case "med_air_1":
	{
		_return =
		[
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",70000],
			["I_Heli_Transport_02_F",100000],
			["I_Heli_light_03_unarmed_F",100000]
		];
	};

	case "med_shop":
	{
		_return =
		[
			["I_Truck_02_ammo_F",30000],
			["C_Offroad_01_F",5000],
			["C_Offroad_01_repair_F",5000],
			["C_Van_01_box_F",10000],
			["B_Truck_01_transport_F",10000],
			["I_Truck_02_medical_F",20000],
			["O_Truck_03_medical_F",20000],
			["B_Truck_01_medical_F",20000],
			["C_SUV_01_F",6000]
		];
	};

	case "civ_car_1":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["C_Van_01_fuel_F",40000],
			["C_Hatchback_01_F",12500],
			["C_Offroad_01_F",10000],
			["C_SUV_01_F",25000],
			["C_Van_01_transport_F",60000],
			["C_Hatchback_01_sport_F",150000]
		];
	};

	case "civ_servt_1":
	{
		_return =
		[
			["C_Offroad_01_F",15000] //Service Truck
		];
	};

	case "civ_truck_1":
	{
		_return =
		[
			["C_Van_01_box_F",85000],
			["I_Truck_02_transport_F",225000],
			["I_Truck_02_covered_F",265000],
			["B_Truck_01_transport_F",350000],
			["B_Truck_01_covered_F",400000],
			["B_Truck_01_ammo_F",450000],
			["B_Truck_01_box_F",500000],
			["O_Truck_03_device_F",1000000]
		];
	};

	case "reb_v_1":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",500000],
			["B_Heli_Light_01_F",325000]
		];

		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",1000000]];
			_return set[count _return,
			["I_Heli_Transport_02_F",1000000]];
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",600000]];
			_return set[count _return,
			["O_Heli_Transport_04_box_F",1000000]];
			_return set[count _return,
			["O_Heli_Transport_04_F",2000000]];
		};
	};

	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000]
		];
	};

	case "reb_car2":
	{
		_return set[count _return,
		["B_Quadbike_01_F",2500]];
		_return set[count _return,
		["C_Offroad_01_F",15000]];
		_return set[count _return,
		["O_MRAP_02_F",500000]];
	};

	case "reb_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",300000]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",550000]];
		_return set[count _return,
		["O_Heli_Transport_04_F",1000000]];
	};

	case "cop_car_1":
	{
		if(__GETC__(life_coplevel) > 0) then
		{
			_return set[count _return,
			["C_SUV_01_F",15000]];
			_return set[count _return,
			["C_Offroad_01_F",5000]];
		};
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_F",25000]];
		};
		if (__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",35000]];
		};
		if (__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_MRAP_01_F",50000]];
		};
		if (__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["I_MRAP_03_F",250000]];
			_return set[count _return,
			["B_MRAP_01_hmg_F",300000]];
		};
	};

	case "civ_air_1":
	{
		_return =
		[
			["B_Heli_Light_01_F",250000],
			["O_Heli_Light_02_unarmed_F",500000]
		];
	};

	case "cop_air_1":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",30000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",50000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_Transport_02_F",65000]];
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
			_return set[count _return,
			["B_Heli_Transport_03_F",225000]];
		};
	};

	case "civ_ship_1":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["O_SDV_01_F",30000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship_1":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_SDV_01_F",100000]
		];
	};

	case "donator_car":
	{
		if(__GETC__(life_donator) > 0) then
		{
			_return =
			[
				["B_Quadbike_01_F",(500 * _donartorPriceCoef)],
				["C_Offroad_01_F",(2500 * _donartorPriceCoef)],
				["C_Hatchback_01_sport_F",(10000 * _donartorPriceCoef)],
				["C_SUV_01_F",(20000 * _donartorPriceCoef)],
				["C_Van_01_fuel_F",(7500 * _donartorPriceCoef)],
				["O_Heli_Light_02_unarmed_F",(175000 * _donartorPriceCoef)],
				["I_Heli_Transport_02_F",(650000 * _donartorPriceCoef)],
				["O_Truck_03_device_F",(800000 * _donartorPriceCoef)],
				["I_MRAP_03_F",(850000 * _donartorPriceCoef)],
				["O_MRAP_02_F",(180000 * _donartorPriceCoef)],
				["B_G_Offroad_01_armed_F",(800000 * _donartorPriceCoef)],
				["O_Heli_Transport_04_box_F",(800000 * _donartorPriceCoef)],
				["O_Heli_Transport_04_F",(1000000 * _donartorPriceCoef)],
				["B_Heli_Light_01_F",(100000 * _donartorPriceCoef)],
				["B_Truck_01_box_F",(250000 * _donartorPriceCoef)],
				["B_MRAP_01_F",(200000 * _donartorPriceCoef)]
			];
		};
	};

	case "kart_shop":
	{
		_return =
		[
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
};
_return;