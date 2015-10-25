/*////////////////////////////////////////////////
                                author : GreeFine
                        Code written by GreeFine
        Using this code or mission without GreeFine direct permission is forbidden
                        Script Description : Lock in Fps for Gun Fight.
///////////////////////////////////////////////*/
FpsLockActive = false;
FpsLockTimer = 0;

FpsLock_FNC = {
if (isNil "FpsLockTimer" || isnil "FpsLockActive") then {FpsLockTimer = 0;FpsLockActive = false;};
if (FpsLockTimer < 300) then { FpsLockTimer = FpsLockTimer + 30; };
	 if (!FpsLockActive) then {
	 	FpsLockActive = true;
		while {FpsLockActive} do
		{
			if (FpsLockTimer <= 0) exitWith { FpsLockTimer = 0; FpsLockActive = false; };
			sleep 1;
			FpsLockTimer = FpsLockTimer - 1;
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