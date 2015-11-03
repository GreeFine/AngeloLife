_j = 0;
{
    _marker = createMarker [format["CargoWeapon%1",_j],(_x select 1)];
    _marker setMarkerShape "ICON";
    _marker setMarkerType "hd_dot";
    _marker setMarkerText (_x select 0);
    _marker setMarkerColor "ColorWhite";
    _j = _j+1;
} forEach [["Port d'Iremi",[5078,9961]],["Port de Neochori",[12697,14217]],["Port de Pyrgos",[16538.1,12462]],["Port de Trachia",[22138,8497]],["Port de Molos",[27642.5,24591]],["Port de kategidis",[22789,13789]],["Port de Agia Triada",[16711,20554]],["Port le FineGree",[21076,19914]]];

life_fnc_WeaponCargo =
compileFinal "
if (count _this < 2) exitWith {};
_nombre = _this select 0;
_Player = _this select 1;
if (isnil '_nombre' || isnil '_Player') exitWith {};
if (_nombre < 4 || _nombre > 60 || !(_Player in playableUnits)) exitWith {};

    _CargoPrice = 0;
    _WeaponsFinal = [];
    _AmmoFinal = [];
    _armesArray30 = [""arifle_TRG21_F"",""arifle_Mk20_F"",""arifle_Katiba_F"",""arifle_MX_F""];
    _munitionArray30 = [""30Rnd_556x45_Stanag"",""30Rnd_556x45_Stanag"",""30Rnd_65x39_caseless_green"",""30Rnd_65x39_caseless_mag""];
    _armesArray25 = [""arifle_MXM_Black_F"",""arifle_MX_SW_Black_F"",""arifle_MXM_F"",""arifle_MX_Black_F""];
    _munitionArray25 = [""30Rnd_65x39_caseless_mag"",""100Rnd_65x39_caseless_mag"",""30Rnd_65x39_caseless_mag"",""30Rnd_65x39_caseless_mag""];
    _armesArray20 = [""LMG_Mk200_F"",""srifle_EBR_F"",""srifle_DMR_01_F"",""LMG_Zafir_F"",""srifle_DMR_06_camo_F"",""srifle_DMR_06_olive_F""];
    _munitionArray20 = [""200Rnd_65x39_cased_Box"",""20Rnd_762x51_Mag"",""10Rnd_762x54_Mag"",""150Rnd_762x54_Box"",""20Rnd_762x51_Mag"",""20Rnd_762x51_Mag""];
    _armesArray15 = [""srifle_GM6_SOS_F"",""srifle_LRR_SOS_F"",""srifle_DMR_03_tan_F"",""srifle_DMR_03_multicam_F"",""srifle_DMR_03_woodland_F"",""srifle_DMR_03_khaki_F"",""srifle_DMR_03_F"",""srifle_DMR_05_blk_F"",""srifle_DMR_05_hex_F"",""srifle_DMR_05_tan_f""];
    _munitionArray15 = [""5Rnd_127x108_Mag"",""7Rnd_408_Mag"",""20Rnd_762x51_Mag"",""20Rnd_762x51_Mag"",""20Rnd_762x51_Mag"",""20Rnd_762x51_Mag"",""20Rnd_762x51_Mag"",""10Rnd_93x64_DMR_05_Mag"",""10Rnd_93x64_DMR_05_Mag"",""10Rnd_93x64_DMR_05_Mag""];
    _armesArray10 = [""launch_RPG32_F"",""srifle_DMR_04_Tan_F"",""srifle_DMR_04_SOS_F""];
    _munitionArray10 = [""RPG32_HE_F"",""10Rnd_127x54_Mag"",""10Rnd_127x54_Mag""];

    for ""_i"" from 1 to (_nombre) do {
        _rand = round(random 100);
        if (_rand <= 30) Then {
            _Rand = round(random(count _armesArray30 - 1));
            _WeaponSelected = _armesArray30 select _Rand;
            _munitionArray = _munitionArray30 select _Rand;
            _CargoPrice = _CargoPrice + 30000;
            _WeaponsFinal = _WeaponsFinal+[_WeaponSelected];
            _AmmoFinal = _AmmoFinal+[_munitionArray];
        };
        if (_rand > 30 && _rand <= 55) Then {
            _Rand = round(random(count _armesArray25 - 1));
            _WeaponSelected = _armesArray25 select _Rand;
            _munitionArray = _munitionArray25 select _Rand;
            _CargoPrice = _CargoPrice + 40000;
            _WeaponsFinal = _WeaponsFinal+[_WeaponSelected];
            _AmmoFinal = _AmmoFinal+[_munitionArray];
        };
        if (_rand > 55 && _rand <= 80) Then {
            _Rand = round(random(count _armesArray20 - 1));
            _WeaponSelected = _armesArray20 select _Rand;
            _munitionArray = _munitionArray20 select _Rand;
            _CargoPrice = _CargoPrice + 80000;
            _WeaponsFinal = _WeaponsFinal+[_WeaponSelected];
            _AmmoFinal = _AmmoFinal+[_munitionArray];
        };
        if (_rand > 80 && _rand <= 95) Then {
            _Rand = round(random(count _armesArray15 - 1));
            _WeaponSelected = _armesArray15 select _Rand;
            _munitionArray = _munitionArray15 select _Rand;
            _CargoPrice = _CargoPrice + 125000;
            _WeaponsFinal = _WeaponsFinal+[_WeaponSelected];
            _AmmoFinal = _AmmoFinal+[_munitionArray];
        };
        if (_rand > 90) Then {
            _Rand = round(random(count _armesArray10 - 1));
            _WeaponSelected = _armesArray10 select _Rand;
            _munitionArray = _munitionArray10 select _Rand;
            _CargoPrice = _CargoPrice + 170000;
            _WeaponsFinal = _WeaponsFinal+[_WeaponSelected];
            _AmmoFinal = _AmmoFinal+[_munitionArray];
        };
    };

    _portsNumber = count [[""Port d'Iremi"",[5078,9961]],[""Port de Neochori"",[12697,14217]],[""Port de Pyrgos"",[16538.1,12462]],[""Port de Trachia"",[22138,8497]],[""Port de Molos"",[27642.5,24591]],[""Port de kategidis"",[22789,13789]],[""Port de Agia Triada"",[16711,20554]],[""Port le FineGree"",[21076,19914]]];
    _PortSelected = round(random _portsNumber);
    _CargoTypes = [""Land_Cargo40_grey_F"",""Land_Cargo40_light_blue_F"",""Land_Cargo40_blue_F"",""Land_Cargo40_brick_red_F"",""Land_Cargo40_cyan_F"",""Land_Cargo40_yellow_F"",""Land_Cargo40_white_F""];
    _CargoVeh = createvehicle [_CargoTypes select round(random (count _CargoTypes)),(MarkerPos format[""CargoWeapon%1"",_PortSelected]),[],1,""""];

    _BoxType = ""Box_NATO_AmmoVeh_F"";
    _caise1 = createVehicle [_BoxType,[0,0,100],[],0,""""];
    _caise1 attachTo [_CargoVeh,[-4,0,0]];
    _caise2 = createVehicle [_BoxType,[0,0,105],[],0,""""];
    _caise2 attachTo [_CargoVeh,[0,0,0]];
    detach _caise1;detach _caise2;

    for ""_i"" from 1 to round(_nombre/2) do {
        _caise1 addWeaponCargoGlobal [_WeaponsFinal select _i-1,1];
        _caise1 addMagazineCargoGlobal [_AmmoFinal select _i-1, 5];
    };

    for ""_i"" from round((_nombre+1)/2) to _nombre do {
        _caise2 addWeaponCargoGlobal [_WeaponsFinal select _i-1,1];
        _caise2 addMagazineCargoGlobal [_AmmoFinal select _i-1, 5];
    };

if (_CargoPrice > 10^6) then {
    _NumMills = _CargoPrice/1000000 -  (_CargoPrice/1000000 mod 1);
    _Remainder = _CargoPrice mod 1000000;
    _CargoPrice = format [""%1%2"",_NumMills,_Remainder]
};

_msg = format[""Votre Collis est arrivé au port ! depechez vous de le récuperer. port : %1, j'attend votre payement de : %2 euros"", markerText format[""CargoWeapon%1"",_PortSelected],_CargoPrice];
[[_msg,""Message Anonyme"",0],""TON_fnc_clientMessage"",_Player,false] spawn life_fnc_MP;";

//TODO [[30,player],"GreeFine_WeaponCargo",false,false] spawn life_fnc_MP;