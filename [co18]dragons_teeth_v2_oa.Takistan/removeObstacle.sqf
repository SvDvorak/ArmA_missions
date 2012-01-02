
_dragonsTeeth = _this select 0;
_player = _this select 1;
_actionId = _this select 2;
_animation = "AinvPknlMstpSlayWrflDnon_medic";

_player disableAI "ANIM";

_startTime = time;
_minimumAnimationTime = 10;

_dragonsTeeth removeAction _actionId;

while {_startTime + _minimumAnimationTime > time} do {
	_player switchMove _animation;
	
	if (!alive _player) exitWith
	{
		_dragonsTeeth addAction["Remove obstacle", "removeObstacle.sqf", [_dragonsTeeth], 6, True, True, "", "(_target distance _this) < 6 && (typeof _this) == engineerTypeName"]
		_player enableAI "ANIM";
		_player switchMove "";
	};
	
	waitUntil {!(animationState _player == _animation)};
	sleep 1.0;
};

deletevehicle _dragonsTeeth;

// UGLY switch but whatever
switch(_dragonsTeeth) do
{
case DT1:
{ checkpoint1NrOfClearedDT = checkpoint1NrOfClearedDT + 1; publicVariable "checkpoint1NrOfClearedDT"; };
case DT2:
{ checkpoint1NrOfClearedDT = checkpoint1NrOfClearedDT + 1; publicVariable "checkpoint1NrOfClearedDT"; };
case DT3:
{ checkpoint2NrOfClearedDT = checkpoint2NrOfClearedDT + 1; publicVariable "checkpoint2NrOfClearedDT"; };
case DT4:
{ checkpoint2NrOfClearedDT = checkpoint2NrOfClearedDT + 1; publicVariable "checkpoint2NrOfClearedDT"; };
case DT5:
{ checkpoint2NrOfClearedDT = checkpoint2NrOfClearedDT + 1; publicVariable "checkpoint2NrOfClearedDT"; };
case DT6:
{ checkpoint3NrOfClearedDT = checkpoint3NrOfClearedDT + 1; publicVariable "checkpoint3NrOfClearedDT"; };
case DT7:
{ checkpoint3NrOfClearedDT = checkpoint3NrOfClearedDT + 1; publicVariable "checkpoint3NrOfClearedDT"; };
case DT8:
{ checkpoint3NrOfClearedDT = checkpoint3NrOfClearedDT + 1; publicVariable "checkpoint3NrOfClearedDT"; };
case DT9:
{ checkpoint3NrOfClearedDT = checkpoint3NrOfClearedDT + 1; publicVariable "checkpoint3NrOfClearedDT"; };
case DT10:
{ checkpoint3NrOfClearedDT = checkpoint3NrOfClearedDT + 1; publicVariable "checkpoint3NrOfClearedDT"; };
case DT11:
{ checkpoint3NrOfClearedDT = checkpoint3NrOfClearedDT + 1; publicVariable "checkpoint3NrOfClearedDT"; };
case DT12:
{ checkpoint3NrOfClearedDT = checkpoint3NrOfClearedDT + 1; publicVariable "checkpoint3NrOfClearedDT"; };
};