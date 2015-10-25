#include <macro.h> 
/*
	File: fn_welcome.sqf
	Author: TheTotenkopf (SealDrop.de)
	
	Description:
	Erstellt ein schönen Regel Screen
*/

//Start erst nach Spawn
waitUntil{!isNull (findDisplay 38500)};
waitUntil{isNull (findDisplay 38500)};

private ["_text","_intro"];

_intro = [];
_text = [];

switch (playerSide) do
{
	case west: 
	{
        _text = [
			format ["<t align='left'><t color='#ff1111'>Bonjours Lentini Life</t>"],
			format ["<t align='left'>Si ceci est votre première visite sur notre serveur, nous vous demandons de lire attentivement les règles. Ce que vous pouvez faire sur notre forum: http://lentinilife.forumactif.org/</t>"],
			format ["<t align='left'>Si vous demandez maintenant ce produit vous apporte l'argent rapide et plus, appuyez sur <t color='#FF8000'>Z</t> et cliquez sur Exchange. Le marché boursier est toujours l'information la plus actuelle sur les prix des matières premières pour vous, puisque nous vivons dans une économie dynamique, les prix aussi toujours changer en proportion de la quantité de matières premières qui sont actuellement disponibles.</t>"],
			format ["<t align='left'>Désynchronisations: La plupart des désynchronisations sont causés par le client, à un taux de trame de 30 FPS sous Armaclient est surchargé et a des problèmes pour gérer les communications réseau.</t>"],
			format ["<t align='left'><t color='#ff1111'>Altis Life est actuellement en phase de devloppement.</t>"],
			format ["<t align='left'>Les admins vous souhaitons beaucoup de plaisir sur ce serveur.</t>"],
			format ["<t align='left' color='#428BCA'>TS3 : odin.evxv.net:10050</t>"],
			format ["<t align='left' color='#428BCA'>Forum : http://lentinilife.forumactif.org/</t>"]
		];
	};
	case independent:
	{
        _text = [
			format ["<t align='left'><t color='#ff1111'>Bonjours Lentini Life</t>"],
			format ["<t align='left'>Si ceci est votre première visite sur notre serveur, nous vous demandons de lire attentivement les règles. Ce que vous pouvez faire sur notre forum: http://lentinilife.forumactif.org/</t>"],
			format ["<t align='left'>Si vous demandez maintenant ce produit vous apporte l'argent rapide et plus, appuyez sur <t color='#FF8000'>Z</t> et cliquez sur Exchange. Le marché boursier est toujours l'information la plus actuelle sur les prix des matières premières pour vous, puisque nous vivons dans une économie dynamique, les prix aussi toujours changer en proportion de la quantité de matières premières qui sont actuellement disponibles.</t>"],
			format ["<t align='left'>Désynchronisations: La plupart des désynchronisations sont causés par le client, à un taux de trame de 30 FPS sous Armaclient est surchargé et a des problèmes pour gérer les communications réseau.</t>"],
			format ["<t align='left'><t color='#ff1111'>Altis Life est actuellement en phase de devloppement.</t>"],
			format ["<t align='left'>Les admins vous souhaitons beaucoup de plaisir sur ce serveur.</t>"],
			format ["<t align='left' color='#428BCA'>TS3 : odin.evxv.net:10050</t>"],
			format ["<t align='left' color='#428BCA'>Forum : http://lentinilife.forumactif.org/</t>"]
		];
	};
	case civilian:
	{
        _text = [
			format ["<t align='left'><t color='#ff1111'>Bonjours Lentini Life</t>"],
			format ["<t align='left'>Si ceci est votre première visite sur notre serveur, nous vous demandons de lire attentivement les règles. Ce que vous pouvez faire sur notre forum: http://lentinilife.forumactif.org/</t>"],
			format ["<t align='left'>Si vous demandez maintenant ce produit vous apporte l'argent rapide et plus, appuyez sur <t color='#FF8000'>Z</t> et cliquez sur Exchange. Le marché boursier est toujours l'information la plus actuelle sur les prix des matières premières pour vous, puisque nous vivons dans une économie dynamique, les prix aussi toujours changer en proportion de la quantité de matières premières qui sont actuellement disponibles.</t>"],
			format ["<t align='left'>Désynchronisations: La plupart des désynchronisations sont causés par le client, à un taux de trame de 30 FPS sous Armaclient est surchargé et a des problèmes pour gérer les communications réseau.</t>"],
			format ["<t align='left'><t color='#ff1111'>Altis Life est actuellement en phase de devloppement.</t>"],
			format ["<t align='left'>Les admins vous souhaitons beaucoup de plaisir sur ce serveur.</t>"],
			format ["<t align='left' color='#428BCA'>TS3 : odin.evxv.net:10050</t>"],
			format ["<t align='left' color='#428BCA'>Forum : http://lentinilife.forumactif.org/</t>"]
		];
	};
};

{
	_intro set [count _intro, (parseText _x)];
} forEach _text;
        
format ["Hallo %1, Willkommen auf unserem Server !", name player] hintC _intro;