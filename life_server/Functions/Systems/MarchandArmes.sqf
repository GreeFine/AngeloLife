MarchandRequest = [];
publicVariable "MarchandRequest";
_j = 0;
{
    _marker = createMarker [format["CargoWeapon%1",_j],(_x select 1)];
    _marker setMarkerShape "ICON";
    _marker setMarkerType "hd_dot";
    _marker setMarkerText (_x select 0);
    _marker setMarkerColor "ColorWhite";
    _j = _j+1;
} forEach [["Port d'Iremi",[5078,9961]],["Port de Neochori",[12697,14217]],["Port de Pyrgos",[16538.1,12462]],["Port de Trachia",[22138,8497]],["Port de Molos",[27642.5,24591]],["Port de kategidis",[22789,13789]],["Port de Agia Triada",[16711,20554]],["Port le FineGree",[21076,19914]]];
_j = _j -1;

while {true} do {
    _MarchandRequest = MarchandRequest;
    MarchandRequest = [];
    publicVariable "MarchandRequest";
    sleep 60;
    {
    _nombre = _x select 0;
    _Player = _x select 1;
    _rand = round(random _j);
    _CargoTypes = ["Land_Cargo40_grey_F","Land_Cargo40_light_blue_F","Land_Cargo40_blue_F","Land_Cargo40_brick_red_F","Land_Cargo40_cyan_F","Land_Cargo40_yellow_F","Land_Cargo40_white_F"];
    _veh = createvehicle [_CargoTypes select round(random (count _CargoTypes)),(MarkerPos format["CargoWeapon%1",_rand]),[],1,""];

            _armes = [];
            for "_i" from 1 to (_nombre*4) do {
                _rand1 = round(random 100);
                if (_rand1 <= 40) Then {
                        _rand2 = round(random 4);
                        _armes1 = ["arifle_TRG21_F","arifle_Mk20_F","arifle_Katiba_F","arifle_MX_F","arifle_MX_Black_F"] select _rand2;
                        _armes = _armes+ (call compile format ['["%1"]',_armes1]);
                };
                if (_rand1 > 40 && _rand1 <= 70) Then {
                        _rand2 = round(random 2);
                        _armes2 = ["arifle_MXM_Black_F","arifle_MX_SW_Black_F","arifle_MXM_F"] select _rand2;
                        _armes = _armes+ (call compile format ['["%1"]',_armes2]);
                };
                if (_rand1 > 70 && _rand1 <= 90) Then {
                        _rand2 = round(random 3);
                        _armes3 = ["LMG_Mk200_F","srifle_EBR_F","srifle_DMR_01_F","LMG_Zafir_F"] select _rand2;
                        _armes = _armes+ (call compile format ['["%1"]',_armes3]);
                };
                if (_rand1 > 90) Then {
                        _rand2 = round(random 2);
                        _armes4 = ["srifle_GM6_SOS_F","srifle_LRR_SOS_F","launch_RPG32_F"] select _rand2;
                        _armes = _armes+ (call compile format ['["%1"]',_armes4]);
                };
                sleep 0.2;

            };

                _Nbox = round(_nombre/2);
                _SelectedWeapon = 0;
                _caise = createVehicle ["Box_East_WpsSpecial_F",[0,0,100],[],0,""];
                clearWeaponCargoGlobal _caise;
                clearMagazineCargoGlobal _caise;
                clearItemCargoGlobal _caise;
                _caise setpos position _veh;
                _caise setdir 90;
                for "_i" from 1 to 4 do
                {
                    _caise addWeaponCargoGlobal [_armes select _SelectedWeapon,1];
                    _SelectedWeapon = _SelectedWeapon + 1;
                };
                for "_i" from 1 to _Nbox do {
                        _caise1 = createVehicle ["Box_East_WpsSpecial_F",[0,0,100],[],0,""];
                        clearWeaponCargoGlobal _caise1;
                        clearMagazineCargoGlobal _caise1;
                        clearItemCargoGlobal _caise1;
                        _caise1 attachTo [_caise,[0,0,(_i*0.35)]];
                        for "_i" from 1 to 4 do
                        {
                            _caise1 addWeaponCargoGlobal [_armes select _SelectedWeapon,1];
                            _SelectedWeapon = _SelectedWeapon + 1;
                        };
                        detach _caise1;
                };

                for "_i" from 0 to _Nbox do {
                        _caise1 = createVehicle ["Box_East_WpsSpecial_F",[0,0,100],[],0,""];
                        clearWeaponCargoGlobal _caise1;
                        clearMagazineCargoGlobal _caise1;
                        clearItemCargoGlobal _caise1;
                        _caise1 attachTo [_caise,[0,1,(_i*0.35)]];
                        for "_i" from 1 to 4 do
                        {
                            _caise1 addWeaponCargoGlobal [_armes select _SelectedWeapon,1];
                            _SelectedWeapon = _SelectedWeapon + 1;
                        };
                        detach _caise1;
                };

        _msg = format["Votre Collis est arrivé au port ! depechez vous de le récuperer. port : %1", markerText format["CargoWeapon%1",_rand]];
        [[_msg,"Message Anonyme",0],"TON_fnc_clientMessage",_Player,false] spawn life_fnc_MP;
    } forEach _MarchandRequest;
};
/*                        _caise1 addAction ["<t color=""#4DB0E2"">"+"Move Box",Gree_fnc_MoveBox]; */