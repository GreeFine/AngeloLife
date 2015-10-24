/*////////////////////////////////////////////////
                                author : GreeFine
                        Code written by GreeFine
        Using this code or mission without GreeFine direct permission is forbidden
                        Script Description : Lock in Fps for Gun Fight.
///////////////////////////////////////////////*/
FpsLockActive = false;
Timer = 0;

FpsLock_FNC = {
if (Timer < 300) { Timer = Timer + 30; };
	 if (!FpsLockActive) then {
	 	FpsLockActive = true;
		while {FpsLockActive} do
		{
			if (Timer <= 0) exitWith { Timer = 0; FpsLockActive = false; };
			sleep 1;
			Timer = Timer - 1;
		};
	};
};

FpsLockLoop_FNC = {
	if (cameraView == "External" && vehicle player == player && FpsLockActive) then
	{
		player switchCamera "Internal";
	};
};

["FpsLockLoopEVH","onEachFrame","FpsLockLoop_FNC"] call BIS_fnc_addStackedEventHandler;
player addEventHandler ["FiredNear",{[] spawn FpsLock_FNC}];