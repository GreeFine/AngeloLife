WeapondCargoRequest = [];
publicVariable "WeapondCargoRequest";
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
    _WeapondCargoRequest = WeapondCargoRequest;
    WeapondCargoRequest = [];
    publicVariable "WeapondCargoRequest";
    sleep 60;
    {
    _CargoPrice = 100000;
    _nombre = _x select 0;
    _Player = _x select 1;
    _rand = round(random _j);
    _CargoTypes = ["Land_Cargo40_grey_F","Land_Cargo40_light_blue_F","Land_Cargo40_blue_F","Land_Cargo40_brick_red_F","Land_Cargo40_cyan_F","Land_Cargo40_yellow_F","Land_Cargo40_white_F"];
    _veh = createvehicle [_CargoTypes select round(random (count _CargoTypes)),(MarkerPos format["CargoWeapon%1",_rand]),[],1,""];

            _armes = [];
            _munition = [];
            for "_i" from 1 to (_nombre*4) do {
                _rand1 = round(random 100);
                if (_rand1 <= 40) Then {
                        _rand2 = round(random 4);
                        _armesArray = ["arifle_TRG21_F","arifle_Mk20_F","arifle_Katiba_F","arifle_MX_F"] select _rand2;
                        _munitionArray = ["30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_65x39_caseless_green","30Rnd_65x39_caseless_mag"] select _rand2;
                        _CargoPrice = _CargoPrice + 30000;
                        _armes = _armes+[_armesArray];
                        _munition = _munition+[_munitionArray];
                };
                if (_rand1 > 40 && _rand1 <= 70) Then {
                        _rand2 = round(random 2);
                        _armesArray = ["arifle_MXM_Black_F","arifle_MX_SW_Black_F","arifle_MXM_F","arifle_MX_Black_F"] select _rand2;
                        _munitionArray = ["30Rnd_65x39_caseless_mag","100Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag"] select _rand2;
                        _CargoPrice = _CargoPrice + 40000;
                        _armes = _armes+[_armesArray];
                        _munition = _munition+[_munitionArray];
                };
                if (_rand1 > 70 && _rand1 <= 90) Then {
                        _rand2 = round(random 3);
                        _armesArray = ["LMG_Mk200_F","srifle_EBR_F","srifle_DMR_01_F","LMG_Zafir_F","srifle_DMR_06_camo_F","srifle_DMR_06_olive_F"] select _rand2;
                        _munitionArray = ["200Rnd_65x39_cased_Box","20Rnd_762x51_Mag","10Rnd_762x54_Mag","150Rnd_762x54_Box","20Rnd_762x51_Mag","20Rnd_762x51_Mag"] select _rand2;
                        _CargoPrice = _CargoPrice + 80000;
                        _armes = _armes+[_armesArray];
                        _munition = _munition+[_munitionArray];
                };
                if (_rand1 > 90) Then {
                        _rand2 = round(random 2);
                        _armesArray = ["srifle_GM6_SOS_F","srifle_LRR_SOS_F","srifle_DMR_03_tan_F","srifle_DMR_03_multicam_F","srifle_DMR_03_woodland_F","srifle_DMR_03_khaki_F","srifle_DMR_03_F","srifle_DMR_05_blk_F","srifle_DMR_05_hex_F","srifle_DMR_05_tan_f"] select _rand2;
                        _munitionArray = ["5Rnd_127x108_Mag","7Rnd_408_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag","10Rnd_93x64_DMR_05_Mag","10Rnd_93x64_DMR_05_Mag","10Rnd_93x64_DMR_05_Mag"] select _rand2;
                        _CargoPrice = _CargoPrice + 125000;
                        _armes = _armes+[_armesArray];
                        _munition = _munition+[_munitionArray];
                };
                if (_rand1 > 95) Then {
                        _rand2 = round(random 2);
                        _armesArray = ["launch_RPG32_F","srifle_DMR_04_Tan_F","srifle_DMR_04_SOS_F"] select _rand2;
                        _munitionArray = ["RPG32_HE_F","10Rnd_127x54_Mag","10Rnd_127x54_Mag"] select _rand2;
                        _CargoPrice = _CargoPrice + 170000;
                        _armes = _armes+[_armesArray];
                        _munition = _munition+[_munitionArray];
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
                    _caise addWeaponCargoGlobal [_armes select _SelectedWeapon, 1];
                    _caise addMagazineCargoGlobal [_munition select _SelectedWeapon, 5];
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
                            _caise1 addMagazineCargoGlobal [_munition select _SelectedWeapon, 5];
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
                            _caise1 addMagazineCargoGlobal [_munition select _SelectedWeapon, 5];
                            _SelectedWeapon = _SelectedWeapon + 1;
                        };
                        detach _caise1;
                };

        _NumMills = _CargoPrice/1000000 -  (_CargoPrice/1000000 mod 1);
        _Remainder = _CargoPrice mod 1000000;
        _msg = format["Votre Collis est arrivé au port ! depechez vous de le récuperer. port : %1, j'attend votre payement de : %2 euros", markerText format["CargoWeapon%1",_rand],format ["%1%2",_NumMills,_Remainder]];
        [[_msg,"Message Anonyme",0],"TON_fnc_clientMessage",_Player,false] spawn life_fnc_MP;

    } forEach _WeapondCargoRequest;
};