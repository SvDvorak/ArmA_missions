
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
		_dragonsTeeth addAction["Remove obstacle", "removeObstacle.sqf", nil, 6, True, True, "", "(_player distance _dragonsTeeth) < 3"];
		_player enableAI "ANIM";
		_player switchMove "";
	};
	
	waitUntil {!(animationState _player == _animation)};
	sleep 1.0;
};

deletevehicle _dragonsTeeth;