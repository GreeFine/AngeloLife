/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	case "life_inv_oilu": {"Pétrole"};
	case "life_inv_oilp": {"Diesel"};
	case "life_inv_heroinu": {"Graine de pavôt"};
	case "life_inv_heroinp": {"Héroine"};
	case "life_inv_cannabis": {"Feuille de cannabis"};
	case "life_inv_marijuana": {"Marijuana"};
	case "life_inv_apple": {"Pomme"};
	case "life_inv_rabbit": {"Viande de lapin"};
	case "life_inv_salema": {"Poisson salema"};
	case "life_inv_ornate": {"Viande d'ornate"};
	case "life_inv_mackerel": {"Maquereau"};
	case "life_inv_tuna": {"Thon"};
	case "life_inv_mullet": {"Viande de mullet"};
	case "life_inv_catshark": {"Viande de l'aiguillat"};
	case "life_inv_turtle": {"Viande de tortue"};
	case "life_inv_fishingpoles": {"Charnière"};
	case "life_inv_water": {"Eau"};
	case "life_inv_coffee": {"Café"};
	case "life_inv_turtlesoup": {"Soupe de tortue"};
	case "life_inv_donuts": {"Donuts"};
	case "life_inv_fuelE": {"Jérrican (Vide)"};
	case "life_inv_fuelF": {"Jerrican"};
	case "life_inv_pickaxe": {"Pioche"};
	case "life_inv_copperore": {"Cuivre"};
	case "life_inv_ironore": {"Minerai de fer"};
	case "life_inv_ironr": {"Minerai de fer"};
	case "life_inv_copperr": {"Cuivre"};
	case "life_inv_sand": {"Sable"};
	case "life_inv_salt": {"sel"};
	case "life_inv_saltr": {"Sel Traité"};
	case "life_inv_glass": {"Verre"};
	case "life_inv_diamond": {"Diamant brut"};
	case "life_inv_diamondr": {"Diamant taillé"};
	case "life_inv_tbacon": {"Bacon tactique"};
	case "life_inv_redgull": {"RedBull"};
	case "life_inv_lockpick": {"Outils de crochetage"};
	case "life_inv_peach": {"Pêche"};
	case "life_inv_coke": {"Feuille de cocaine"};
	case "life_inv_cokep": {"Cocaine"};
	case "life_inv_spikeStrip": {"Herse"};
	case "life_inv_rock": {"Pierre"};
	case "life_inv_cement": {"ciment"};
	case "life_inv_goldbar": {"Lingot d'or"};
	case "life_inv_wine": {"Vin"};
	case "life_inv_grapes": {"Raisin"};
	case "life_inv_methu": {"Methamphetamine brut"};
	case "life_inv_methp": {"Methamphetamine pure"};
	case "life_inv_storage1": {"Box (Petit)"};
	case "life_inv_storage2": {"Box (gros)"};
	case "life_inv_battery": {"Batterie de téléphone"};
	case "life_inv_blastingcharge": {"Charge de C4"};
	case "life_inv_boltcutter": {"Outils de serrurier"};
	case "life_inv_defusekit": {"C4 EntschärfungsKit"};
	case "life_inv_painkillers": {"Analgésique"};
	case "life_inv_morphium": {"Morphine"};
	case "life_inv_zipties": {"Collier de serrage"};
	case "life_inv_storagesmall": {"Petite caisse de stockage"};
	case "life_inv_storagebig": {"Caisse de stockage"};
	case "life_inv_mauer": {"Barrage"};
	case "life_inv_mash": {"Mélange de graine"};
	case "life_inv_yeast": {"Levure"};
	case "life_inv_rye": {"Seigle"};
	case "life_inv_hops": {"Houblon"};
	case "life_inv_whiskey": {"Whisky"};
	case "life_inv_beerp": {"Bière"};
	case "life_inv_bottles": {"Bouitelle de verre"};
	case "life_inv_cornmeal": {"Maïs"};
	case "life_inv_bottledwhiskey": {"wisky en bouteille"};
	case "life_inv_bottledbeer": {"Bière en bouteille"};
	case "life_inv_bottledshine": {"Moonshine en bouteille"};
	case "life_inv_moonshine": {"Moonshine"};
	case "life_inv_puranium": {"Mélange d'uranium"}; // Add This
    case "life_inv_ipuranium": {"Produit d'uranium III"}; // Add This
    case "life_inv_uranium1": {"Uranium"}; // Add This
    case "life_inv_uranium2": {"Uranium brut"}; // Add This
    case "life_inv_uranium3": {"Uranium purifié"}; // Add This
    case "life_inv_uranium4": {"Concentré d'uranium"}; // Add This
    case "life_inv_uranium": {"Uranium"}; // Add This
	case "life_inv_kidney": {"Rein"}; 
	case "life_inv_scalpel": {"Scalpel"};
	
	//License Block
	case "license_civ_driver": {"Permis de conduire"};
	case "license_civ_air": {"Permis de pilotage"};
	case "license_civ_heroin": {"Traitement d'héroine"};
	case "license_civ_gang": {"Gang"};
	case "license_civ_oil": {"Raffinement de pétrole"};
	case "license_civ_dive": {"Taucherschein"};
	case "license_civ_boat": {"Permis de bateaux"};
	case "license_civ_gun": {"Permis de port d'arme"};
	case "license_cop_air": {"Permis de pilotage"};
	case "license_cop_swat": {"Gign"};
	case "license_cop_cg": {"Garde-côte"};
	case "license_civ_rebel": {"Entrainement rebelle"};
	case "license_civ_truck": {"Permis poid lourd"};
	case "license_civ_diamond": {"Tailleur de diamant"};
	case "license_civ_copper": {"Traitement cuivre"};
	case "license_civ_iron": {"Ferronnerie"};
	case "license_civ_sand": {"Traitement de sable"};
	case "license_civ_salt": {"Traitement de sel"};
	case "license_civ_coke": {"Séchage de cocaine"};
	case "license_civ_marijuana": {"séchage de marijuana"};
	case "license_civ_cement": {"Traitement du ciment"};
	case "license_civ_meth": {"Traitement de meth"};
	case "license_civ_grapes": {"Vignerons"};
	case "license_civ_moonshine": {"Traitement de la moonshine"};
	case "license_civ_meth": {"Traitement de meth"};
	case "license_med_air": {"Permis de pilotage"};
	case "license_civ_home": {"Droit de propriété"};
	case "license_med_adac": {"Dépanneur"};
	case "license_civ_stiller": {"Distilleur d'alcool"};
	case "license_civ_liquor": {"Permis d'alcool"};
	case "license_civ_bottler": {"License de remplissage"};
	case "license_civ_uranium": {"Traitement d'uranium"};
};
