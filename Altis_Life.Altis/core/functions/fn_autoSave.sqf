/*
	Author: TheTotenkopf für SealDrop.de
*/

while {true} do {
	uiSleep 1200;
	[] call SOCK_fnc_updateRequest;
	hintSilent "Sauvegarde des donnée effectuer.\n\n Prochaine sauvegarde dans 20 Minute";
};