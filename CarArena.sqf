/*////////////////////////////////////////////////
                                author : GreeFine
                        	Code written by GreeFine
        Using this code or mission without GreeFine direct permission is forbidden
                        Script Description : Main handler for a car arena
///////////////////////////////////////////////*/

// Pnj Calling this from where the arena Stand

player setpos [0,0,0]; //Closed arena need Tp in out To handle it well.

_rules = ""; //Rules ?
Hint format ["Wellcome %1, ", name player,_rules];
player allowDamage false;



while {true} do
{
	if !(alive player) exitWith {player allowDamage false;};//Should not be able to die there
};

Arena_Repair = {

};

Arena_MoveVehicle = {

};

Arena_buyVeh = {

};

CreateBuyPlatforme = {
_StartingPos = [30689.2,38.0166,0];
_SizeW = 15;
_SizeH = 41.7;
_hight = 350;
_Rows = 30;
_lines = 150;

ArenaPlateformRows = [];
ArenaPlateformLines = ["Land_Pier_F" createVehicle _StartingPos];
(ArenaPlateformLines select 0) setPosATL [_StartingPos select 0,_StartingPos select 1,_hight];

for "_i" from 1 to _lines do
{
	ArenaPlateformLines = ArenaPlateformLines + ["Land_Pier_F" createVehicle [0,0,0]];
	_PlateformBuffer = (ArenaPlateformLines select _i);
	_PlateformBuffer attachTo [ArenaPlateformLines select (_i - 1),[_SizeH,0,0]];
	detach _PlateformBuffer;
	ArenaPlateformRows = ArenaPlateformRows + [_PlateformBuffer];
	_offset = (count ArenaPlateformRows)-1;
	for "_j" from 1 to _Rows do
	{
		ArenaPlateformRows = ArenaPlateformRows + ["Land_Pier_F" createVehicle [0,0,0]];
		_PlatformBuffer = ArenaPlateformRows select _j + _offset;
		_PlatformBuffer attachTo [ArenaPlateformRows select (_j + _offset - 1),[0,_SizeW,0]];
		detach _PlatformBuffer;
	};
};
};

/*
{ deleteVehicle _x} forEach (ArenaPlateformRows + ArenaPlateformLines);
*/
Arena_Check = {
	_arena = markerPos ""; //Marker of the arena
	_arenaSize = 1000; //size in meter of the arena

	while {Arena_In} do
	{
		if (player distance _arena > _arenaSize) then {};
	};
};

Arena_ActionHandler = {
	if (isNil "Arena_ActionA") then {Arena_ActionA = false;}; //CHeck and init vars
	if (isNil "Arena_In") then {Arena_In = false;}; //CHeck and init vars

	if (Arena_In) then {
		if (Arena_ActionA) then {
			player removeAction Arena_Action;
			Arena_ActionA = false;
		} else {
			Arena_Action = player addAction ["Arena: Repaire vehicle", {}];
			Arena_ActionA = true;
		};
	};
};

