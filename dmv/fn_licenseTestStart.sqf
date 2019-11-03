#include "..\..\script_macros.hpp"
	
if (license_civ_driver) exitwith {["You already have a drivers license",false,"slow"] call life_fnc_notificationSystem;};
if (playerSide isEqualTo civilian) then {
    CreateDialog "Life_yesnoMenu";
};