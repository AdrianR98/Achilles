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
	{
	if ((typeOf _x) isEqualTo "SWOP_CIS_droid") then
		{
			(_x) setobjecttextureglobal [0,"optre_vehicles\longsword\data\LS_misc_co.paa"];
		}else{};
	}
	forEach (allUnits select { side _x == east });
	
	["Added Snow Camo to B1s"] call Ares_fnc_ShowZeusMessage;
}
else
{
	["Must be placed on an object."] call Ares_fnc_ShowZeusMessage;
};

#include "\achilles\modules_f_ares\module_footer.inc.sqf"