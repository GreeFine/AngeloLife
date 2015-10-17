/*
	File: fn_removeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/
private["_data","_value","_obj","_pos","_ind"];
disableSerialization;
_data = lbData[2005,(lbCurSel 2005)];
_value = ctrlText 2010;
if(_data == "") exitWith {hintSilent "Vous n'avez rien sélectionné.";};
if(!([_value] call TON_fnc_isnumber)) exitWith {hintSilent "Vous n'avez pas saisi un format de nombre réel."};
if(parseNumber(_value) <= 0) exitWith {hintSilent "Vous devez entrer au montant réel que vous souhaitez supprimer."};
_ind = [_data,life_illegal_items] call TON_fnc_index;
if(_ind != -1 && ([west,getPos player,100] call life_fnc_nearUnits)) exitWith {titleText["Ceci est un élément illégal et les flics sont à proximité, vous ne pouvez pas supprimer la preuve","PLAIN"]};
if(player != vehicle player) exitWith {titleText["Vous ne pouvez pas supprimer un article quand vous êtes dans un véhicule.","PLAIN"]};
if(!([false,_data,(parseNumber _value)] call life_fnc_handleInv)) exitWith {hintSilent "Impossible de supprimer."};
_type = [_data,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hintSilent format["You have successfully removed %1 %2 from your inventory.",(parseNumber _value), _type];
	
[] call life_fnc_p_updateMenu;