/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {1000}; //Drivers License cost
	case "boat": {1000}; //Boating license cost
	case "pilot": {300000}; //Pilot/air license cost
	case "gun": {80000}; //Firearm/gun license cost
	case "dive": {5000}; //Diving license cost
	case "oil": {20000}; //Oil processing license cost
	case "cair": {15000}; //Cop Pilot License cost
	case "swat": {35000}; //Swat License cost
	case "cg": {10000}; //Coast guard license cost
	case "heroin": {120000}; //Heroin processing license cost
	case "marijuana": {80000}; //Marijuana processing license cost
	case "medmarijuana": {255000}; //Medical Marijuana processing license cost
	case "gang": {500000}; //Gang license cost
	case "rebel": {500000}; //Rebel license cost
	case "truck": {35000}; //Truck license cost
	case "diamond": {150000}; //Diamanten Lizenz
	case "salt": {20000}; //Salz Lizenz
	case "cocaine": {80000}; //Kokain Lizenz
	case "sand": {14500}; //Sand Lizenz
	case "iron": {9500}; //Eisen Lizenz
	case "copper": {9000}; //Kupfer Lizenz
	case "cement": {6500}; //Zement Lizenz
	case "grapes": {10000}; //Trauben Lizenz
	case "moonshine": {80000}; //Moonshine Lizenz
	case "meth": {65000}; //Meth Lizenz
	case "medic": {10000}; //Medic Ausbildung
	case "mair": {15000}; //Maische
	case "home": {500000}; //Home Lizenz
	case "adac": {10000}; //ADAC Lizenz
	case "stiller":{25000}; //Abf?ller
	case "liquor":{50000}; //Desti
	case "bottler":{25000}; //Abf?ller Lizenz
	case "mash":{100000}; //Maische Lizenz
	case "uranium": {450000}; //Uran Lizenz
};