// F2 - Folk Group Markers
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// JIP CHECK
// Prevents the script executing until the player has synchronised correctly:

#include "f_waitForJIP.sqf"

// ====================================================================================

switch (faction player) do
{

// ====================================================================================

// MARKERS: US
// Markers seen by players in US slots.

	case "BIS_US":
	{
		["GrpUS_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_Alpha", 1, "A", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_Bravo", 1, "B", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_Charlie", 1, "C", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_Delta", 1, "D", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_Echo", 1, "E", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_Fox", 1, "F", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_MMG1", 3, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_MAT1", 4, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_ST1",  6, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
	};

// ====================================================================================

// MARKERS: TAKISTANI ARMY
// Markers seen by players in TAKISTANI ARMY slots.

	case "BIS_TK":
	{
		["GrpTK_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_Alpha", 1, "A", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_Bravo", 1, "B", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_Charlie", 1, "C", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_Delta", 1, "D", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_Echo", 1, "E", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_Fox", 1, "F", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_MMG1", 3, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_MAT1", 4, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_ST1",  6, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
	};

// ====================================================================================

// MARKERS: TAKISTANI MILITIA
// Markers seen by players in TAKISTANI MILITIA slots.

	case "BIS_TK_INS":
	{
		["GrpINS_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_Alpha", 1, "A", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_Bravo", 1, "B", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_Charlie", 1, "C", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_Delta", 1, "D", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_Echo", 1, "E", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_Fox", 1, "F", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_M2", 1, "M2", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_SPG", 1, "SPG", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_MMG1", 3, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_MAT1", 4, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_ST1",  6, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
	};
       
// ====================================================================================

// MARKERS: TAKISTANI LOCALS (INDEPENDENT)
// Markers seen by players in TAKISTANI LOCALS (INDEPENDENT) slots.

	case "BIS_TK_GUE":
	{
		["GrpGUE_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_Alpha", 1, "A", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_Bravo", 1, "B", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_Charlie", 1, "C", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_Delta", 1, "D", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_Echo", 1, "E", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_Fox", 1, "F", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_MMG1", 3, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_MAT1", 4, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_ST1",  6, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
	};

// ====================================================================================

// MARKERS: UN
// Markers seen by players in UN slots.

	case "BIS_UN":
	{
		["GrpUN_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_Alpha", 1, "A", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_Bravo", 1, "B", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_Charlie", 1, "C", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_Delta", 1, "D", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_Echo", 1, "E", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_Fox", 1, "F", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_MMG1", 3, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_MAT1", 4, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_ST1",  6, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
	};

// ====================================================================================

// MARKERS: BRITISH ARMED FORCES
// Markers seen by players in BRITISH ARMED FORCES slots.

	case "BIS_BAF":
	{
		["GrpBAF_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_Alpha", 1, "A", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_Bravo", 1, "B", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_Charlie", 1, "C", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_Delta", 1, "D", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_Echo", 1, "E", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_Fox", 1, "F", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_MMG1", 3, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_MAT1", 4, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_ST1",  6, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
	};
	
// ====================================================================================

// MARKERS: CZECH REPUBPLIC
// Markers seen by players in CZECH REPUBPLIC slots.

	case "BIS_CZ":
	{

	};

// ====================================================================================

// MARKERS: GERMAN
// Markers seen by players in GERMAN slots.

	case "BIS_GER":
	{

	};

// ====================================================================================

// MARKERS: CIVILIAN (TAKISTANI)
// Markers seen by players in CIVILIAN (TAKISTANI) slots.

	case "BIS_TK_CIV":
	{

	};

// ====================================================================================

// MARKERS: CIVILIAN (SPECIAL)
// Markers seen by players in CIVILIAN (SPECIAL) slots.

	case "BIS_CIV_special":
	{

	};
       
// ====================================================================================

};

// ====================================================================================

if (true) exitWith {};