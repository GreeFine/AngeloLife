waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Changelog"];
player createDiarySubject ["serverrules","Server Regeln"];
player createDiarySubject ["policerules","Polizei Gesetze"];
player createDiarySubject ["safezones","SafeZones"];
//player createDiarySubject ["civrules","Civilian Rules"];
player createDiarySubject ["illegalitems","Illegal"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Steuerung"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"Official Change Log",
				"
					Tous les amendements sont sur le Forum: http://lentinilife.forumactif.org/
				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"Lentini life changelog",
				"
					Toutes les infos sur les mises a jours sont aussi sur le forum: http://lentinilife.forumactif.org/
				"
		]
	];

		player createDiaryRecord ["serverrules",
		[
			"Exploits", 
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
	
	player createDiaryRecord["safezones",
		[
			"Safe Zones",
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
					
	
	player createDiaryRecord ["serverrules",
		[
			"Bannissement", 
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Gendarmerie", 
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Bateaux", 
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Aviation", 
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Vehicles", 
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Communication", 
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Random Deathmatching (RDM)", 
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"New Life Rule", 
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Don't Be A Dick!", 
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
	
// Police Section
	player createDiaryRecord ["policerules",
		[
			"Crisis Negotiation",
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"The Federal Reserve",
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Aviation",
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Illegal Areas", 
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Patrolling", 
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Checkpoints", 
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Garage", 
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Vitesse", 
				"
				En ville: 30<br/>
				Les routes principales: 120Km/h<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Affectation", 
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Prison et billets",
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
		
	player createDiaryRecord ["policerules",
		[
			"Ressources legals", 
				"
				Armes legal:<br/>
				1. P07<br/>
				3. ACP-C2<br/>
				5. PDW2000<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Utilisation d'armes",
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Raids",
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Gendarmerie",
				"
				Grades:<br/>
				1. Recrue<br/>
				2. Gendarme<br/>
				3. Adjudant<br/>
				4. Adjudant-chef<br/>
				5. Major<br/>
				6. Officier<br/>
				7. GIGN<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Autres",
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Teamspeak",
				"
				1. Tous les agents de police doivent être sur le TeamSpeak alors qu'ils sont enregistrés dans un agent de police. <br/>
				2. Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
	
	
	
// Illegal Items Section
	player createDiaryRecord ["illegalitems",
		[
			"Rebelle",
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Gang",
				"
				Toutes les règles Sont sur notre forum! http://lentinilife.forumactif.org/
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Ressources illegales",
				"
				Les vehicules rebelles sont totalement interdit vis à vis de la gendarmerie.
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Armes illegales",
				"
				1. MXm<br/>
				2. Katiba<br/>
				3. MK.20<br/>
				4. Mk.14<br/>
				5. Rahim<br/>
				6. SDAR Rifle<br/>
				7. ETC ...
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Ressources illegales",
				"
				Die Folgenden Rohstoffe sind Illegal:<br/><br/>
				1. Schildkröten<br/>
				2. Cocaine<br/>
				3. Heroine<br/>
				4. Cannabis<br/>
				5. Marijuana<br/>
				6. Meth<br/>
				7. Moonshine<br/>
				8. Or<br/>
				9. Uran III<br/>
				10. Nieren<br/>
				"
		]
	];

	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"Touches",
				"
				y: Menu joueur
				U: Verrouiller/deverouiller le vehicule
				F: Sirene gendarmerie<br/>
				T: Coffre<br/>
				M: Gendarmerie Avertissement<br/>
				Ä: Cop Schranken öffnen<br/>
				O: Cops Nagelbänder legen<br/>
				^: Spitzhacke<br/>
				Left Shift + 1: Telefon<br/>
				Left Shift + 2: WantedList<br/>
				Left Shift + 3: Anzeige erstatten<br/>
				Left Shift + R: Festnehmen<br/>
				Left Shift + G: Ergeben<br/>
				Left Shift + V: Knockout<br/>
				Left Shift + O: Civ Restrain<br/>
				Left Shift + Space: Springen<br/>
				Left Shift + H: Waffe Holstern<br/>
				Left Windows: Housing option<br/>
				Left Windows: Farmen an Feldern<br/>
				Left Windows: Spieler Interaktionsmenü<br/>
				"
		]
	];