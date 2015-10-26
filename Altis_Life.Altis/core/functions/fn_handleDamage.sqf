/*
	File: fn_handleDamage.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Handles damage, specifically for handling the 'tazer' pistol and nothing else.
*/
private["_unit","_damage","_source","_projectile","_part","_curWep"];
_unit = _this select 0;
_part = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;

//Internal Debugging.
if(!isNil "TON_Debug") then {
	systemChat format["PART: %1 || DAMAGE: %2 || SOURCE: %3 || PROJECTILE: %4 || FRAME: %5",_part,_damage,_source,_projectile,diag_frameno];
};

//Handle the tazer first (Top-Priority).
if(!isNull _source) then {
	if(_source != _unit) then {
		_curWep = currentWeapon _source;
		if(_projectile in ["B_9x21_Ball","B_556x45_dual"] && _curWep in ["hgun_Rook40_F","hgun_Rook40_snds_F","arifle_SDAR_F"]) then {
			if(side _source == west && playerSide != west) then {
				private["_distance","_isVehicle","_isQuadOrKart"];
				_distance = if(_projectile == "B_556x45_dual") then {100} else {50};
				_isVehicle = if(vehicle player != player) then {true} else {false};
				_isQuadOrKart = if(_isVehicle) then {if(typeOf (vehicle player) in ["B_Quadbike_01_F","C_Kart_01_F","C_Kart_01_Fuel_F","C_Kart_01_Blu_F","C_Kart_01_Red_F","C_Kart_01_Vrana_F"]) then {true} else {false}} else {false};

				if(_unit distance _source < _distance) then {
					if(!life_istazed && !(_unit getVariable["restrained",false])) then {
						if(_isQuadOrKart) then {
							player action ["Eject",vehicle player];
							[_unit,_source] spawn life_fnc_tazed;
							_damage = false;
						} else {
							if (!_isVehicle) then {
								[_unit,_source] spawn life_fnc_tazed;
								_damage = false;
							};
						};
					};
				};
			};

			if(playerSide == independent && side _source == independent) then {
				_damage = 0.8; //Pas de mort mais sa fait bien mal !
			};
			//Temp fix for super tasers on cops.
			if(playerSide == west && side _source == west) then {
				_damage = 0.8; //Pas de mort mais sa fait bien mal !
			};
		};
	};
};

[] call life_fnc_hudUpdate;
_damage;