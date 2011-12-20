// F2 - Folk Assign Gear Script
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private [
"_faction","_rifle","_rifleGL","_MG","_pistol","_riflemag","_rifleGLmag",
"_GLMag","_MGmag","_grenade","_at","_atmag",
"_smokewhite","_smokegreen","_smokered","_smokegrenade",
"_pistol","_pistolmag",
"_medicrifle","_medicmag","_snrifle","_snmag","_sprifle","_spmag","_mediumMG","_mediumMGmag",
"_mediumAT","_mediumATmag1","_mediumATmag2","_heavyAT","_heavyATmag1","_heavyATmag2",
"_flarewhite","_flarered","_flareyellow","_flaregreen"];

// ====================================================================================

// ERROR CHECKING
// If the script has been called without both required paramaters being passed, it 
// exits immediately.

sleep .1;

if (isNull (_this select 1)) exitwith {};
if (!local (_this select 1)) exitwith {};

// ====================================================================================

// GET UNIT FACTION
// The second variable passed to the script identifies the unit, from which we can
// then get the faction. More error checking is included here.

_typeofUnit = toLower (_this select 0);
_unit = _this select 1;
_faction = toLower (faction _unit);

if (isnil ("_faction")) then {call compile format ["_faction = '%1'",(faction _unit)];};
_faction =  tolower _faction;
if (!(_faction == "bis_us") and !(_faction == "bis_baf") and !(_faction == "bis_tk") and !(_faction == "bis_tk_ins") and !(_faction == "bis_tk_gue") and !(_faction == "bis_un") and !(_faction == "bis_cz") and !(_faction == "bis_ger") and !(_faction == "bis_tk_civ") and !(_faction == "bis_civ_special")) exitwith {player globalchat format ["DEBUG (f\common\folk_assignGear.sqf): Unit %1 faction %2 is not correct. Make sure the script is initialized correctly.",_unit,_faction];};

// hint format ["%1",_faction];

// ====================================================================================

// DEFINE FACTION EQUIPMENT
// The following blocks of code define the equipment for each faction.

switch (_faction) do
{

// ====================================================================================

// EQUIPMENT: US
// The block of code below identifies equipment for the US faction.

	case "bis_us":
	{
		_rifle = "M4A3_CCO_EP1";
		_riflemag = "30Rnd_556x45_Stanag";   

		_medicrifle = "M4A3_CCO_EP1";
		_medicmag = "30Rnd_556x45_Stanag";
		
		_MG = "M249_EP1";
		_MGmag = "100Rnd_556x45_M249";
		
		_grenade = "HandGrenade_West";
		_smokegrenade = "SmokeShell";
		
		_at = "M136";
		_atmag = "M136";

		_snrifle = "M24_des_EP1";
		_snmag = "5Rnd_762x51_M24";
		_sprifle = "M4A3_CCO_EP1";
		_spmag = "30Rnd_556x45_Stanag";

		_mediumMG = "m240_scoped_EP1";
		_mediumMGmag = "100Rnd_762x51_M240";

		_mediumAT = "MAAWS";
		_mediumATmag1 = "MAAWS_HEAT";
		_mediumATmag2 = "MAAWS_HEDP";

		_heavyAT = "Javelin";
		_heavyATmag1 = "Javelin";
		_heavyATmag2 = "Javelin";

		_rifleGL = "M4A3_RCO_GL_EP1";		
		_rifleGLmag = "30Rnd_556x45_Stanag";
		_GLmag = "1Rnd_HE_M203";
		_smokewhite = "1Rnd_Smoke_M203";
		_smokegreen = "1Rnd_SmokeGreen_M203";
		_smokered = "1Rnd_SmokeRed_M203";
		_flarewhite = "FlareWhite_M203";
		_flarered = "FlareRed_M203";
		_flareyellow = "FlareYellow_M203";
		_flaregreen = "FlareGreen_M203";

		_pistol = "M9";
		_pistolmag = "15Rnd_9x19_M9";
	};

// ====================================================================================

// EQUIPMENT: TAKISTANI ARMY
// The block of code below identifies equipment for the TAKISTANI ARMY faction.

	case "bis_tk":
	{
		_rifle = "FN_FAL";
		_riflemag = "20Rnd_762x51_FNFAL";   

		_medicrifle = "FN_FAL";
		_medicmag = "20Rnd_762x51_FNFAL";
		
		_MG = "RPK_74";
		_MGmag = "75Rnd_545x39_RPK";
		
		_grenade = "HandGrenade_East";
		_smokegrenade = "SmokeShell";
		
		_at = "RPG7V";
		_atmag = "PG7V";

		_snrifle = "SVD";
		_snmag = "10Rnd_762x54_SVD";
		_sprifle = "FN_FAL";
		_spmag = "20Rnd_762x51_FNFAL";

		_mediumMG = "PK";
		_mediumMGmag = "100Rnd_762x54_PK";

		_mediumAT = "RPG7V";
		_mediumATmag1 = "PG7V";
		_mediumATmag2 = "PG7VR";

		_heavyAT = "MetisLauncher";
		_heavyATmag1 = "AT13";
		_heavyATmag2 = "AT13";

		_rifleGL = "AK_74_GL";		
		_rifleGLmag = "30Rnd_545x39_AK";
		_GLmag = "1Rnd_HE_GP25";
		_smokewhite = "1Rnd_SMOKE_GP25";
		_smokegreen = "1Rnd_SMOKEGREEN_GP25";
		_smokered = "1Rnd_SMOKERED_GP25";
		_flarewhite = "FlareWhite_GP25";
		_flarered = "FlareRed_GP25";
		_flareyellow = "FlareYellow_GP25";
		_flaregreen = "FlareGreen_GP25";

		_pistol = "Makarov";
		_pistolmag = "8Rnd_9x18_Makarov";
	};

// ====================================================================================

// EQUIPMENT: TAKISTANI MILITIA
// The block of code below identifies equipment for the TAKISTANI MILITIA faction.

	case "bis_tk_ins":
	{
		_rifle = "AK_47_M";
		_riflemag = "30Rnd_762x39_AK47";   

		_medicrifle = "AK_47_S";
		_medicmag = "30Rnd_762x39_AK47";
		
		_MG = "RPK_74";
		_MGmag = "75Rnd_545x39_RPK";
		
		_grenade = "HandGrenade_East";
		_smokegrenade = "SmokeShell";
		
		_at = "RPG7V";
		_atmag = "PG7V";

		_snrifle = "SVD";
		_snmag = "10Rnd_762x54_SVD";
		_sprifle = "AK_47_M";
		_spmag = "30Rnd_762x39_AK47";

		_mediumMG = "PK";
		_mediumMGmag = "100Rnd_762x54_PK";

		_mediumAT = "RPG7V";
		_mediumATmag1 = "PG7V";
		_mediumATmag2 = "PG7VR";

		_heavyAT = "MetisLauncher";
		_heavyATmag1 = "AT13";
		_heavyATmag2 = "AT13";

		_rifleGL = "AK_74_GL";		
		_rifleGLmag = "30Rnd_545x39_AK";
		_GLmag = "1Rnd_HE_GP25";
		_smokewhite = "1Rnd_SMOKE_GP25";
		_smokegreen = "1Rnd_SMOKEGREEN_GP25";
		_smokered = "1Rnd_SMOKERED_GP25";
		_flarewhite = "FlareWhite_GP25";
		_flarered = "FlareRed_GP25";
		_flareyellow = "FlareYellow_GP25";
		_flaregreen = "FlareGreen_GP25";

		_pistol = "Makarov";
		_pistolmag = "8Rnd_9x18_Makarov";
	};
   
// ====================================================================================

// EQUIPMENT: TAKISTANI LOCALS (INDEPENDENT)
// The block of code below identifies equipment for the TAKISTANI LOCALS (INDEPENDENT) faction.

	case "bis_tk_gue":
	{
		_rifle = "AK_47_M";
		_riflemag = "30Rnd_762x39_AK47";   

		_medicrifle = "AK_47_S";
		_medicmag = "30Rnd_762x39_AK47";
		
		_MG = "RPK_74";
		_MGmag = "75Rnd_545x39_RPK";
		
		_grenade = "HandGrenade_East";
		_smokegrenade = "SmokeShell";
		
		_at = "RPG7V";
		_atmag = "PG7V";

		_snrifle = "SVD";
		_snmag = "10Rnd_762x54_SVD";
		_sprifle = "AK_47_M";
		_spmag = "30Rnd_762x39_AK47";

		_mediumMG = "PK";
		_mediumMGmag = "100Rnd_762x54_PK";

		_mediumAT = "RPG7V";
		_mediumATmag1 = "PG7V";
		_mediumATmag2 = "PG7VR";

		_heavyAT = "MetisLauncher";
		_heavyATmag1 = "AT13";
		_heavyATmag2 = "AT13";

		_rifleGL = "AK_74_GL";		
		_rifleGLmag = "30Rnd_545x39_AK";
		_GLmag = "1Rnd_HE_GP25";
		_smokewhite = "1Rnd_SMOKE_GP25";
		_smokegreen = "1Rnd_SMOKEGREEN_GP25";
		_smokered = "1Rnd_SMOKERED_GP25";
		_flarewhite = "FlareWhite_GP25";
		_flarered = "FlareRed_GP25";
		_flareyellow = "FlareYellow_GP25";
		_flaregreen = "FlareGreen_GP25";

		_pistol = "Makarov";
		_pistolmag = "8Rnd_9x18_Makarov";
	};

// ====================================================================================

// EQUIPMENT: UN
// The block of code below identifies equipment for the UN faction.

	case "bis_un":
	{
		_rifle = "FN_FAL";
		_riflemag = "20Rnd_762x51_FNFAL";   

		_medicrifle = "FN_FAL";
		_medicmag = "20Rnd_762x51_FNFAL";
		
		_MG = "M249_EP1";
		_MGmag = "100Rnd_556x45_M249";
		
		_grenade = "HandGrenade_East";
		_smokegrenade = "SmokeShell";
		
		_at = "RPG7V";
		_atmag = "PG7V";

		_snrifle = "SVD";
		_snmag = "10Rnd_762x54_SVD";
		_sprifle = "FN_FAL";
		_spmag = "20Rnd_762x51_FNFAL";

		_mediumMG = "m240_scoped_EP1";
		_mediumMGmag = "100Rnd_762x51_M240";

		_mediumAT = "RPG7V";
		_mediumATmag1 = "PG7V";
		_mediumATmag2 = "PG7VR";

		_heavyAT = "MetisLauncher";
		_heavyATmag1 = "AT13";
		_heavyATmag2 = "AT13";

		_rifleGL = "M4A3_RCO_GL_EP1";		
		_rifleGLmag = "30Rnd_556x45_Stanag";
		_GLmag = "1Rnd_HE_M203";
		_smokewhite = "1Rnd_Smoke_M203";
		_smokegreen = "1Rnd_SmokeGreen_M203";
		_smokered = "1Rnd_SmokeRed_M203";
		_flarewhite = "FlareWhite_M203";
		_flarered = "FlareRed_M203";
		_flareyellow = "FlareYellow_M203";
		_flaregreen = "FlareGreen_M203";

		_pistol = "M9";
		_pistolmag = "15Rnd_9x19_M9";
	};

// ====================================================================================

// EQUIPMENT: BRITISH ARMED FORCES
// The block of code below identifies equipment for the BRITISH ARMED FORCES faction.

	case "bis_baf":
	{
		_rifle = "BAF_L85A2_RIS_SUSAT";
		_riflemag = "30Rnd_556x45_Stanag";   

		_medicrifle = "BAF_L85A2_RIS_SUSAT";
		_medicmag = "30Rnd_556x45_Stanag";
		
		_MG = "BAF_L110A1_Aim";
		_MGmag = "200Rnd_556x45_L110A1";
		
		_grenade = "HandGrenade_West";
		_smokegrenade = "SmokeShell";
		
		_at = "M136";
		_atmag = "M136";

		_snrifle = "BAF_LRR_scoped";
		_snmag = "5Rnd_86x70_L115A1";
		_sprifle = "BAF_L85A2_RIS_SUSAT";
		_spmag = "30Rnd_556x45_Stanag";

		_mediumMG = "BAF_L7A2_GPMG";
		_mediumMGmag = "100Rnd_762x51_M240";

		_mediumAT = "BAF_NLAW_Launcher";
		_mediumATmag1 = "NLAW";
		_mediumATmag2 = "NLAW";

		_heavyAT = "Javelin";
		_heavyATmag1 = "Javelin";
		_heavyATmag2 = "Javelin";

		_rifleGL = "BAF_L85A2_UGL_SUSAT";		
		_rifleGLmag = "30Rnd_556x45_Stanag";
		_GLmag = "1Rnd_HE_M203";
		_smokewhite = "1Rnd_Smoke_M203";
		_smokegreen = "1Rnd_SmokeGreen_M203";
		_smokered = "1Rnd_SmokeRed_M203";
		_flarewhite = "FlareWhite_M203";
		_flarered = "FlareRed_M203";
		_flareyellow = "FlareYellow_M203";
		_flaregreen = "FlareGreen_M203";

		_pistol = "M9";
		_pistolmag = "15Rnd_9x19_M9";
	};

// ====================================================================================

// EQUIPMENT: CZECH REPUBPLIC
// The block of code below identifies equipment for the CZECH REPUBPLIC faction.

	case "bis_cz":
	{

	};

// ====================================================================================

// EQUIPMENT: GERMAN
// The block of code below identifies equipment for the GERMAN faction.

	case "bis_ger":
	{

	};

// ====================================================================================

// EQUIPMENT: CIVILIAN (TAKISTANI)
// The block of code below identifies equipment for the CIVILIAN (TAKISTANI) faction.

	case "bis_tk_civ":
	{

	};

// ====================================================================================

// EQUIPMENT: CIVILIAN (SPECIAL)
// The block of code below identifies equipment for the CIVILIAN (SPECIAL) faction.

	case "bis_civ_special":
	{

	};
   
// ====================================================================================

};

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable).

switch (_typeofUnit) do
{

// ====================================================================================

// LOADOUT: COMMANDER

	case "co":
	{
		removeallweapons _unit;
		{_unit addmagazine _rifleGLmag} foreach [1,2,3,4,5,6,7];
		{_unit addmagazine _GLmag} foreach [1,2];
		{_unit addmagazine _flarewhite} foreach [1,2,3,4];
		{_unit addmagazine _smokewhite} foreach [1,2];
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		_unit addweapon _rifleGL;
		_unit addweapon "NVGoggles";   
		_unit addweapon "Binocular";
		_unit selectweapon primaryweapon _unit;
	};
   
// ====================================================================================

// LOADOUT: DEPUTY COMMANDER

	case "dc":
	{
		removeallweapons _unit;
		{_unit addmagazine _rifleGLmag} foreach [1,2,3,4,5,6,7];
		{_unit addmagazine _GLmag} foreach [1,2];
		{_unit addmagazine _flarewhite} foreach [1,2,3,4];
		{_unit addmagazine _smokewhite} foreach [1,2];
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		_unit addweapon _rifleGL;
		_unit addweapon "NVGoggles";   
		_unit addweapon "Binocular";
		_unit selectweapon primaryweapon _unit;
	};

// ====================================================================================

// LOADOUT: MEDIC

	case "med":
	{
		removeallweapons _unit;
		{_unit addmagazine _medicmag} foreach [1,2,3,4,5];
		_unit addweapon _medicrifle;
		_unit addweapon "NVGoggles";   
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		_unit selectweapon primaryweapon _unit;
	};
	
// ====================================================================================

// LOADOUT: ENGINEER

	case "eng":
	{
		removeallweapons _unit;
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7];
		{_unit addmagazine _grenade} foreach [1,2];
		_unit addweapon _rifle;
		_unit addweapon "NVGoggles"; 
		_unit selectweapon primaryweapon _unit;
	};

// ====================================================================================

// LOADOUT: FIRE TEAM LEADER

	case "ftl":
	{
		removeallweapons _unit;
		{_unit addmagazine _rifleGLmag} foreach [1,2,3,4,5,6,7];
		{_unit addmagazine _GLmag} foreach [1,2,3];
		{_unit addmagazine _flarewhite} foreach [1,2,3,4];
		{_unit addmagazine _smokewhite} foreach [1];
		{_unit addmagazine _Grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		_unit addweapon _rifleGL;
		_unit addweapon "NVGoggles";   
		_unit addweapon "Binocular";
		_unit selectweapon primaryweapon _unit;
	};

// ====================================================================================

// LOADOUT: AUTOMATIC RIFLEMAN
// The loadouts differ slightly for each faction.

	case "ar":
	{
		switch (_faction) do
		{
			case "bis_us":
			{
				removeallweapons _unit;
				{_unit addmagazine _MGmag;} foreach [1,2,3,4];
				_unit addweapon _MG;
				{_unit addmagazine _pistolmag;} foreach [1,2];
				_unit addweapon _pistol;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_baf":
			{
				removeallweapons _unit;
				{_unit addmagazine _MGmag;} foreach [1,2];
				_unit addweapon _MG;
				{_unit addmagazine _pistolmag;} foreach [1,2];
				_unit addweapon _pistol;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_tk":
			{
				removeallweapons _unit;
				{_unit addmagazine _MGmag;} foreach [1,2,3,4,5];
				_unit addweapon _MG;
				{_unit addmagazine _pistolmag;} foreach [1,2];
				_unit addweapon _pistol;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_tk_gue":
			{
				removeallweapons _unit;
				{_unit addmagazine _MGmag;} foreach [1,2,3,4,5];
				_unit addweapon _MG;
				{_unit addmagazine _pistolmag;} foreach [1,2];
				_unit addweapon _pistol;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_tk_ins":
			{
				removeallweapons _unit;
				{_unit addmagazine _MGmag;} foreach [1,2,3,4,5];
				_unit addweapon _MG;
				{_unit addmagazine _pistolmag;} foreach [1,2];
				_unit addweapon _pistol;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_un":
			{
				removeallweapons _unit;
				{_unit addmagazine _MGmag;} foreach [1,2,3,4];
				_unit addweapon _MG;
				{_unit addmagazine _pistolmag;} foreach [1,2];
				_unit addweapon _pistol;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
		};
	};

// ====================================================================================

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
// The loadouts differ slightly for each faction.

	case "aar":
	{
		switch (_faction) do
		{
			case "bis_us":
			{
				removeallweapons _unit;
				{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
				{_unit addmagazine _MGmag;} foreach [1,2];
				{_unit addmagazine _Grenade} foreach [1,2];
				_unit addweapon _rifle;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_baf":
			{
				removeallweapons _unit;
				{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
				{_unit addmagazine _MGmag;} foreach [1];
				{_unit addmagazine _Grenade} foreach [1,2];
				_unit addweapon _rifle;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_tk":
			{
				removeallweapons _unit;
				{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
				{_unit addmagazine _MGmag;} foreach [1,2];
				{_unit addmagazine _Grenade} foreach [1,2];
				_unit addweapon _rifle;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_tk_gue":
			{
				removeallweapons _unit;
				{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
				{_unit addmagazine _MGmag;} foreach [1,2];
				{_unit addmagazine _Grenade} foreach [1,2];
				_unit addweapon _rifle;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_tk_ins":
			{
				removeallweapons _unit;
				{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
				{_unit addmagazine _MGmag;} foreach [1,2];
				{_unit addmagazine _Grenade} foreach [1,2];
				_unit addweapon _rifle;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_un":
			{
				removeallweapons _unit;
				{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
				{_unit addmagazine _MGmag;} foreach [1,2];
				{_unit addmagazine _Grenade} foreach [1,2];
				_unit addweapon _rifle;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
		};
	};

// ====================================================================================

// LOADOUT: RIFLEMAN

	case "rif":
	{
		removeallweapons _unit;
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7];
		{_unit addmagazine _grenade} foreach [1,2];
		_unit addweapon _rifle;
		_unit addweapon "NVGoggles"; 
		_unit selectweapon primaryweapon _unit;
	};

// ====================================================================================

// LOADOUT: RIFLEMAN (AT)

	case "rat":
	{
		removeallweapons _unit;
		{_unit addmagazine _atmag;} foreach [1];
		_unit addweapon _at;
		{_unit addmagazine _medicmag} foreach [1,2,3,4,5,6];
		_unit addweapon _medicrifle;
		_unit addweapon "NVGoggles"; 
		_unit selectweapon primaryweapon _unit;
	};

// ====================================================================================

// LOADOUT: RIFLEMAN (RRPG)

	case "rrpg":
	{
		removeallweapons _unit;
		{_unit addmagazine _atmag;} foreach [1];
		_unit addweapon _at;
		{_unit addmagazine _medicmag} foreach [1,2,3,4,5,6];
		_unit addweapon _medicrifle;
		_unit addweapon "NVGoggles"; 
		_unit selectweapon primaryweapon _unit;
	};

// ====================================================================================

// LOADOUT: MEDIUM MG GUNNER

	case "mmgg":
	{
		switch (_faction) do
		{
			case "bis_us":
			{
				removeallweapons _unit;
				{_unit addmagazine _mediumMGmag} foreach [1,2,3,4];
				_unit addweapon _mediumMG;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_baf":
			{
				removeallweapons _unit;
				{_unit addmagazine _mediumMGmag} foreach [1,2,3,4];
				_unit addweapon _mediumMG;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_tk":
			{
				removeallweapons _unit;
				{_unit addmagazine _mediumMGmag} foreach [1,2,3,4];
				_unit addweapon _mediumMG;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_tk_gue":
			{
				removeallweapons _unit;
				{_unit addmagazine _mediumMGmag} foreach [1,2,3,4];
				_unit addweapon _mediumMG;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_tk_ins":
			{
				removeallweapons _unit;
				{_unit addmagazine _mediumMGmag} foreach [1,2,3,4];
				_unit addweapon _mediumMG;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_un":
			{
				removeallweapons _unit;
				{_unit addmagazine _mediumMGmag} foreach [1,2,3,4];
				_unit addweapon _mediumMG;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
		};
	};

// ====================================================================================

// LOADOUT: MEDIUM MG ASSISTANT GUNNER

	case "mmgag":
	{
		switch (_faction) do
		{
			case "bis_us":
			{
				removeallweapons _unit;
				{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
				{_unit addmagazine _mediumMGmag} foreach [1,2];
				_unit addweapon _rifle;
				_unit addmagazine "Laserbatteries";
				_unit addweapon "Laserdesignator";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_baf":
			{
				removeallweapons _unit;
				{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
				{_unit addmagazine _mediumMGmag} foreach [1,2];
				_unit addweapon _rifle;
				_unit addmagazine "Laserbatteries";
				_unit addweapon "Laserdesignator";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_tk":
			{
				removeallweapons _unit;
				{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
				{_unit addmagazine _mediumMGmag} foreach [1,2];
				_unit addweapon _rifle;
				_unit addmagazine "Laserbatteries";
				_unit addweapon "Laserdesignator";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_tk_gue":
			{
				removeallweapons _unit;
				{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
				{_unit addmagazine _mediumMGmag} foreach [1,2];
				_unit addweapon _rifle;
				_unit addmagazine "Laserbatteries";
				_unit addweapon "Laserdesignator";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_tk_ins":
			{
				removeallweapons _unit;
				{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
				{_unit addmagazine _mediumMGmag} foreach [1,2];
				_unit addweapon _rifle;
				_unit addmagazine "Laserbatteries";
				_unit addweapon "Laserdesignator";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_un":
			{
				removeallweapons _unit;
				{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
				{_unit addmagazine _mediumMGmag} foreach [1,2];
				_unit addweapon _rifle;
				_unit addmagazine "Laserbatteries";
				_unit addweapon "Laserdesignator";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
		};
	};

// ====================================================================================

// LOADOUT: MEDIUM AT GUNNER

	case "matg":
	{
		switch (_faction) do
		{
			case "bis_us":
			{
				removeallweapons _unit;
				{_unit addmagazine _mediumATmag1;} foreach [1,2];
				_unit addweapon _mediumAT;
				{_unit addmagazine _medicmag} foreach [1,2,3];
				_unit addweapon _medicrifle;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_baf":
			{
				removeallweapons _unit;
				{_unit addmagazine _mediumATmag1;} foreach [1,2];
				_unit addweapon _mediumAT;
				{_unit addmagazine _medicmag} foreach [1,2,3];
				_unit addweapon _medicrifle;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_tk":
			{
				removeallweapons _unit;
				{_unit addmagazine _mediumATmag1;} foreach [1,2,3,4];
				_unit addweapon _mediumAT;
				{_unit addmagazine _medicmag} foreach [1,2,3];
				_unit addweapon _medicrifle;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_tk_gue":
			{
				removeallweapons _unit;
				{_unit addmagazine _mediumATmag1;} foreach [1,2,3,4];
				_unit addweapon _mediumAT;
				{_unit addmagazine _medicmag} foreach [1,2,3];
				_unit addweapon _medicrifle;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_tk_ins":
			{
				removeallweapons _unit;
				{_unit addmagazine _mediumATmag1;} foreach [1,2,3,4];
				_unit addweapon _mediumAT;
				{_unit addmagazine _medicmag} foreach [1,2,3];
				_unit addweapon _medicrifle;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
			case "bis_un":
			{
				removeallweapons _unit;
				{_unit addmagazine _mediumATmag1;} foreach [1,2,3,4];
				_unit addweapon _mediumAT;
				{_unit addmagazine _medicmag} foreach [1,2,3];
				_unit addweapon _medicrifle;
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit;
			};
		};
	};

// ====================================================================================

// LOADOUT: MEDIUM AT ASSISTANT GUNNER

	case "matag":
	{
		switch (_faction) do
		{
			case "bis_us":
			{
				removeallweapons _unit;
				{_unit addmagazine _medicmag} foreach [1,2,3,4,5];
				_unit addweapon _medicrifle;
				{_unit addmagazine _mediumATmag2;} foreach [1,2];
				_unit addmagazine "Laserbatteries";
				_unit addweapon "Laserdesignator";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit; 
			};
			case "bis_baf":
			{
				removeallweapons _unit;
				{_unit addmagazine _medicmag} foreach [1,2,3,4,5];
				_unit addweapon _medicrifle;
				{_unit addmagazine _mediumATmag2;} foreach [1,2];
				_unit addmagazine "Laserbatteries";
				_unit addweapon "Laserdesignator";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit; 
			};
			case "bis_tk":
			{
				removeallweapons _unit;
				{_unit addmagazine _medicmag} foreach [1,2,3,4,5];
				_unit addweapon _medicrifle;
				{_unit addmagazine _mediumATmag1;} foreach [1,2];
				_unit addmagazine "Laserbatteries";
				_unit addweapon "Laserdesignator";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit; 
			};
			case "bis_tk_gue":
			{
				removeallweapons _unit;
				{_unit addmagazine _medicmag} foreach [1,2,3,4,5];
				_unit addweapon _medicrifle;
				{_unit addmagazine _mediumATmag1;} foreach [1,2];
				_unit addmagazine "Laserbatteries";
				_unit addweapon "Laserdesignator";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit; 
			};
			case "bis_tk_ins":
			{
				removeallweapons _unit;
				{_unit addmagazine _medicmag} foreach [1,2,3,4,5];
				_unit addweapon _medicrifle;
				{_unit addmagazine _mediumATmag1;} foreach [1,2];
				_unit addmagazine "Laserbatteries";
				_unit addweapon "Laserdesignator";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit; 
			};
			case "bis_un":
			{
				removeallweapons _unit;
				{_unit addmagazine _medicmag} foreach [1,2,3,4,5];
				_unit addweapon _medicrifle;
				{_unit addmagazine _mediumATmag1;} foreach [1,2];
				_unit addmagazine "Laserbatteries";
				_unit addweapon "Laserdesignator";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit; 
			};
		};
	};

// ====================================================================================

// LOADOUT: SNIPER

	case "sn":
	{
		switch (_faction) do
		{
			case "bis_us":
			{
				removeallweapons _unit;
				{_unit addmagazine _snmag} foreach [1,2,3,4];
				_unit addweapon _snrifle;
				_unit addweapon "Binocular";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit; 
			};
			case "bis_baf":
			{
				removeallweapons _unit;
				{_unit addmagazine _snmag} foreach [1,2,3,4];
				_unit addweapon _snrifle;
				_unit addweapon "Binocular";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit; 
			};
			case "bis_tk":
			{
				removeallweapons _unit;
				{_unit addmagazine _snmag} foreach [1,2];
				_unit addweapon _snrifle;
				_unit addweapon "Binocular";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit; 
			};
			case "bis_tk_gue":
			{
				removeallweapons _unit;
				{_unit addmagazine _snmag} foreach [1,2];
				_unit addweapon _snrifle;
				_unit addweapon "Binocular";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit; 
			};
			case "bis_tk_ins":
			{
				removeallweapons _unit;
				{_unit addmagazine _snmag} foreach [1,2];
				_unit addweapon _snrifle;
				_unit addweapon "Binocular";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit; 
			};
			case "bis_un":
			{
				removeallweapons _unit;
				{_unit addmagazine _snmag} foreach [1,2];
				_unit addweapon _snrifle;
				_unit addweapon "Binocular";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit; 
			};
		};
	};

// ====================================================================================

// LOADOUT: SPOTTER

	case "sp":
	{
		switch (_faction) do
		{
			case "bis_us":
			{
				removeallweapons _unit;
				{_unit addmagazine _spmag} foreach [1,2,3,4];
				{_unit addmagazine _snmag} foreach [1,2];
				_unit addweapon _sprifle;
				_unit addmagazine "Laserbatteries";
				_unit addweapon "Laserdesignator";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit; 
			};
			case "bis_baf":
			{
				removeallweapons _unit;
				{_unit addmagazine _spmag} foreach [1,2,3,4];
				{_unit addmagazine _snmag} foreach [1,2];
				_unit addweapon _sprifle;
				_unit addmagazine "Laserbatteries";
				_unit addweapon "Laserdesignator";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit; 
			};
			case "bis_tk":
			{
				removeallweapons _unit;
				{_unit addmagazine _spmag} foreach [1,2,3,4];
				{_unit addmagazine _snmag} foreach [1];
				_unit addweapon _sprifle;
				_unit addmagazine "Laserbatteries";
				_unit addweapon "Laserdesignator";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit; 
			};
			case "bis_tk_gue":
			{
				removeallweapons _unit;
				{_unit addmagazine _spmag} foreach [1,2,3,4];
				{_unit addmagazine _snmag} foreach [1];
				_unit addweapon _sprifle;
				_unit addmagazine "Laserbatteries";
				_unit addweapon "Laserdesignator";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit; 
			};
			case "bis_tk_ins":
			{
				removeallweapons _unit;
				{_unit addmagazine _spmag} foreach [1,2,3,4];
				{_unit addmagazine _snmag} foreach [1];
				_unit addweapon _sprifle;
				_unit addmagazine "Laserbatteries";
				_unit addweapon "Laserdesignator";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit; 
			};
			case "bis_un":
			{
				removeallweapons _unit;
				{_unit addmagazine _spmag} foreach [1,2,3,4];
				{_unit addmagazine _snmag} foreach [1];
				_unit addweapon _sprifle;
				_unit addmagazine "Laserbatteries";
				_unit addweapon "Laserdesignator";
				_unit addweapon "NVGoggles"; 
				_unit selectweapon primaryweapon _unit; 
			};
		};
	};
	
// ====================================================================================

// ERROR CHECKING
// If the unit type could not be successfully detected the script exits with an error.

   default
   {
   if (true) exitwith {player globalchat format ["DEBUG (f\common\folk_assignGear.sqf): Unit = %1. Gear template %2 does not exist.",_unit,_typeofunit]};
   };
};