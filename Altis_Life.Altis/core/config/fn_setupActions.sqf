/*
	File: fn_setupActions.sqf

	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case west:
	{
		//Stra?ensperren aufheben
		life_actions = life_actions + [player addAction["Prendre barriere",life_fnc_packupmauer,"",0,false,false,"",' _mauer = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_mauer" && !isNil {(_mauer getVariable "item")}']];
		//Nagelb?nder aufheben
		life_actions = life_actions + [player addAction["Prendre herse",life_fnc_packupSpikes,"",0,false,false,"",' _spikes = nearestObjects[getPos player,["Land_Razorwire_F"],8] select 0; !isNil "_spikes" && !isNil {(_spikes getVariable "item")}']];
		//Aussteigen aus Fahrzeugen
		life_actions = life_actions + [player addAction["Sortir",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
		//Hinsetzen
		life_actions = life_actions + [player addAction["s'asseoir",life_fnc_sitDown,cursorTarget,10,false,false,"",' !isNull cursorTarget && (player distance cursorTarget) < 3 && (cursorTarget isKindOf "Land_CampingChair_V1_F" || cursorTarget isKindOf "Land_ChairWood_F" || cursorTarget isKindOf "Land_ChairPlastic_F")']];
		//Aufstehen
		life_actions = life_actions + [player addAction["se lever", life_fnc_sitDown,cursorTarget,10,false,false,"",'life_sitting']];			//insigne de police
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Insigne de police</t>",life_fnc_copShowLicense,"",1,false,true,"",' playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" ']];
		//Boule Qui?s
		life_actions = [player addAction["<t color='#ADFF2F'>Boule Qui?s Oui/Non</t>",{if (soundVolume != 1) then {1 fadeSound 1;} else {1 fadeSound 0.1;};},"",-6,false,false,"",'vehicle player != player || soundVolume != 1']];
	};

	case civilian:
	{
		//Take The Organs
		life_actions = life_actions + [player addAction["Prendre le rein",life_fnc_takeOrgans,"",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable ["missingOrgan",FALSE]) && !(player getVariable "Escorting") && !(player getVariable "hasOrgan") && !(player getVariable "transporting") && animationState cursorTarget == "Incapacitated"']];
		//Hinsetzen
		life_actions = life_actions + [player addAction["S'asseoir",life_fnc_sitDown,cursorTarget,10,false,false,"",' !isNull cursorTarget && (player distance cursorTarget) < 3 && (cursorTarget isKindOf "Land_CampingChair_V1_F" || cursorTarget isKindOf "Land_ChairWood_F" || cursorTarget isKindOf "Land_ChairPlastic_F")']];
		//Aufstehen
		life_actions = life_actions + [player addAction["Se lever", life_fnc_sitDown,cursorTarget,10,false,false,"",'life_sitting']];
		//montrer la pi?ce d'identit?
		life_actions = life_actions + [player addAction["<t color='#4CD100'>Carte d'identite</t>",life_fnc_HintCi,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" ']];
		//Boule Qui?s
		life_actions = life_actions + [player addAction["<t color='#ADFF2F'>Boule Qui?s Oui/Non</t>",{if (soundVolume != 1) then {1 fadeSound 1;} else {1 fadeSound 0.1;};},"",-6,false,false,"",'vehicle player != player || soundVolume != 1']];
		life_actions = life_actions + [player addAction ["<t color=""#4DB0E2"">"+"Move Box",Gree_fnc_MoveBox,"",-6,false,false,"",'vehicle player == player && typeof cursorTarget == "Box_East_WpsSpecial_F"']];
	};

	case independant:
	{
		life_actions = life_actions + [player addAction["<t color='#ADFF2F'>Boule Qui?s Oui/Non</t>",{if (soundVolume != 1) then {1 fadeSound 1;} else {1 fadeSound 0.1;};},"",-6,false,false,"",'vehicle player != player || soundVolume != 1']];
	};