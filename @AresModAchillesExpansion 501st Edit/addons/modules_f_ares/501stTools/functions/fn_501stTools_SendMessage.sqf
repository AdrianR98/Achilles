//////////////////////////////////////////////////////////////////////////////////////////////////////////////
////
//// 
////+++++++++++STATUS+++++++++++
////
////++++++++++++++++++++++++++++
////
////
////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#include "\achilles\modules_f_ares\module_header.hpp"

private _unitUnderCursor = [_logic, false] call Ares_fnc_GetUnitUnderCursor;

if (isNull _unitUnderCursor) then
{
	["Message Sent!"] call Ares_fnc_ShowZeusMessage;
	[west, "Advisor"] sideChat "This is a message for the world to see!";
}
else
{
	["Must be placed on an object."] call Ares_fnc_ShowZeusMessage;
};

#include "\achilles\modules_f_ares\module_footer.inc.sqf"