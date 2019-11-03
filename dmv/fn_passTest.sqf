#include "..\..\script_macros.hpp"
	

if ((time - life_action_delay) < 5) exitWith {closeDialog 0;};
closeDialog 0;
life_action_delay = time;
license_civ_driver = true;
["DMV"] spawn mav_ttm_fnc_addExp;

[player,"TestComplete"] remoteexeccall ["say3D",0];
[2] call SOCK_fnc_updatePartial;

if (isPlayer _unit) exitwith {["Congratulations! You have passed the test! You can now buy any land vehicle, drive responsibly!",false,"slow"] call life_fnc_notificationSystem;};

