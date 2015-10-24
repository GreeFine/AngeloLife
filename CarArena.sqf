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
