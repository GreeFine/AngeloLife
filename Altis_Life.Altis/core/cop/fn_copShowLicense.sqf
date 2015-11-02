/*
File : fn_copShowLicense.sqf
Create : Black Lagoon
Edit : Deathblade
*/

private["_target", "_message","_coplevel","_rang"];

_target = cursorTarget;

if(playerSide != west) exitWith
{
	hint "Vous n'êtes pas un flic !";
};

if( isNull _target) then {_target = player;};

if( !(_target isKindOf "Man") ) then {_target = player;};

if( !(alive _target) ) then {_target = player;};

_coplevel = call life_coplevel;

switch ( _coplevel ) do
{
	case 1: { _rang = "Recrue"; };
	case 2: { _rang = "Gendarme"; };
	case 3: { _rang = "Adjudant"; };
	case 4: { _rang = "Adjdant chef"; };
	case 5: { _rang = "Major"; };
	case 6: { _rang = "Sous-Lieutenant"; };
	case 7: { _rang = "Lieutenant"; };
	case 8: { _rang = "Capitaine"; };
	case 9: { _rang = "Commandant"; };
	case 10: { _rang = "Lieutenant-Colonel"; };
	case 11: { _rang = "Colonel"; };
	case 12: { _rang = "Soldat"; };
	case 13: { _rang = "soldat 1er classe"; };
	case 14: { _rang = "Caporal"; };
	case 15: { _rang = "Caporal chef"; };
	case 16: { _rang = "Sergent"; };
	case 17: { _rang = "Sergent chef"; };
	case 18: { _rang = "Adjudant"; };
	case 19: { _rang = "Adjudant chef"; };
	case 20: { _rang = "Major"; };
	case 21: { _rang = "Sous-Lieutenant"; };
	case 22: { _rang = "Lieutenant"; };
	case 23: { _rang = "Capitaine"; };
	case 24: { _rang = "commandant"; };
	case 25: { _rang = "Lieutenant-Colonel"; };
	case 26: { _rang = "Colonel"; };
	default {_rank =  "Erreur";};
};

_message = format["<img size='10' color='#FFFFFF' image='textures\insigne.jpg'/><br/><br/><t size='2.5'>%1</t><br/><t size='1.8'>%2</t><br/><t size='1'>Gendarme d'Altis</t>", name player, _rang];

[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
